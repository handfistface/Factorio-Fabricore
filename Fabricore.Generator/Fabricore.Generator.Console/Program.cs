
using Fabricore.Generator.Console.Utility;
using System.Text.RegularExpressions;
using System.Windows.Forms;

/// <summary>
///     Reads in the cfg file, and then generates the lua code for displaying it
///     Finally, it puts that lua code in the system clipboard for copying
///     arg[0]: the command to run, "lua" or "reorder"
///     arg[1]: the path to the cfg
///     arg[2]: the tag to read in, such as "iron_ore"
/// </summary>
internal class Program
{
    private static IFileManipulator _fileManipulator;
    private static string _entireFileContents;

    [STAThread]
    private static void Main(string[] args)
    {
        _fileManipulator = new FileManipulator();

        var command = args[0].ToLower();      //can be lua or reorder
        var toRead = new FileInfo(args[1]);     //path to the file to read in
        var tagToFind = args[2];        //this should just be something like "copper_ore"

        //read in the file and get only the tag we're interested in
        var tagSnippet = GetTagSnippet(toRead, $"[{tagToFind}]");

        if (command == "lua")
        {
            //generate the lua based off the tag we've just retrieved
            var luaCode = GenerateLua(tagSnippet, tagToFind);
            Clipboard.SetText(luaCode);
            Console.Out.WriteLine("Copied lua code to clipboard");
        }
        else if (command == "reorder")
        {
            //regenerate the text & labels in the cfg file
            var newTagSnippet = ReorderCfg(tagSnippet, tagToFind);
            var replacedFileContents = _entireFileContents.Replace(tagSnippet, newTagSnippet);
            _fileManipulator.WriteFile(toRead, replacedFileContents);
            Console.Out.WriteLine("Updated file with new reformatted tag");

            //generate and copy the lua code to the clipboard
            var luaCode = GenerateLua(newTagSnippet, tagToFind);
            Clipboard.SetText(luaCode);
            Console.Out.WriteLine("Copied lua code to clipboard");
        }
    }

    private static string ReorderCfg(string tagSnippet, string tagName)
    {
        var lines = tagSnippet.Split("\r\n", StringSplitOptions.RemoveEmptyEntries);
        int textCount = 1;
        int labelCount = 1;
        var newLines = $"[{tagName}]\r\n";
        foreach (var line in lines)
        {
            //pull out text or label identifier
            var textMatch = Regex.Match(line, @"text\d*=");
            if (textMatch.Success)
            {
                newLines += $"text{textCount++}={line.Substring(textMatch.Value.Length)}\r\n";
            }
            var labelMatch = Regex.Match(line, @"label\d*=");
            if (labelMatch.Success)
            {
                newLines += $"\r\nlabel{labelCount++}={line.Substring(labelMatch.Value.Length)}\r\n";
            }
        }

        newLines += "\r\n";
        return newLines;
    }

    /// <summary>
    ///     Generates the lua code
    /// </summary>
    /// <param name="tagSnippet">String of the tag, including the name such as [iron_ore]</param>
    /// <param name="tagName"></param>
    /// <returns></returns>
    private static string GenerateLua(string tagSnippet, string tagName)
    {
        //we go line by line, so split on new line
        var lines = tagSnippet.Split("\r\n", StringSplitOptions.RemoveEmptyEntries)
            .Skip(1);   //plus skip the first since we're not interested in generating the code for the tag, that's done manually
        var luaCode = $"if page_name == \"{tagName}\" then\r\n";

        //this is driven by expected and formatted text already
        foreach( var line in lines )
        {
            //get the leading =, like if it's a text, or label
            var leadingIdentifier = line.Substring(0, line.IndexOf("="));
            if (leadingIdentifier.Contains("text"))
            {
                luaCode += $"\telement.add {{ type = \"label\", caption = {{ \"{tagName}.{leadingIdentifier}\" }} }}\r\n";
            }
            else if (leadingIdentifier.Contains("label"))
            {
                luaCode += $"\telement.add {{ type = \"label\", caption = {{ \"{tagName}.{leadingIdentifier}\" }}, style = \"heading_1_label\" }}\r\n";
            }
        }
        luaCode += "end\r\n";
        return luaCode;

    }

    private static string GetTagSnippet(FileInfo toRead, string tagToFind)
    {
        //read in the file
        _entireFileContents = _fileManipulator.ReadFile(toRead);

        //get the line where the tag lives
        var fileContents = _entireFileContents.Substring(_entireFileContents.IndexOf(tagToFind));

        //skip to the next line
        var skipContents = fileContents.Replace(tagToFind, "");

        //find the next occurance of a tag, or EOF
        var regex = new Regex(@"\[[\w\d]+[_\w\d]*\]");
        var matches = regex.Matches(skipContents);

        //if there were matches, then select to the next tag
        if (matches.Count > 0)
        {
            var firstMatch = matches.First();
            fileContents = fileContents.Substring(0, fileContents.IndexOf(firstMatch.Value));
        }

        return fileContents;
    }
}