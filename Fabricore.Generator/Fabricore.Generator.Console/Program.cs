
using Fabricore.Generator.Console.Utility;
using System.Text.RegularExpressions;
using System.Windows.Forms;

/// <summary>
///     Reads in the cfg file, and then generates the lua code for displaying it
///     Finally, it puts that lua code in the system clipboard for copying
///     arg[0]: the path to the cfg
///     arg[1]: the tag to read in, such as "iron_ore"
/// </summary>
internal class Program
{
    [STAThread]
    private static void Main(string[] args)
    {
        var toRead = new FileInfo(args[0]);     //path to the file to read in
        var tagToFind = args[1];        //this should just be something like "copper_ore"

        //read in the file and get only the tag we're interested in
        var tagSnippet = GetTagSnippet(toRead, $"[{tagToFind}]");

        //generate the lua based off the tag we've just retrieved
        var luaCode = GenerateLua(tagSnippet, tagToFind);

        Clipboard.SetText(luaCode);
        Console.Out.WriteLine("Copied lua code to clipboard");
    }

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
        var fileManipulator = new FileManipulator();
        var fileContents = fileManipulator.ReadFile(toRead);

        //get the line where the tag lives
        fileContents = fileContents.Substring(fileContents.IndexOf(tagToFind));

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