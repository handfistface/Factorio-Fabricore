using System.Text;

namespace Fabricore.Generator.Console.Utility
{
    public interface IFileManipulator
    {
        string ReadFile(FileInfo toRead);
        void WriteFile(FileInfo toWrite, string fileContents);
    }

    public class FileManipulator : IFileManipulator
    {
        /// <summary>
        ///     Reads a file's entire contents
        /// </summary>
        /// <param name="toRead"></param>
        /// <returns></returns>
        public string ReadFile(FileInfo toRead)
        {
            using var fs = toRead.OpenRead();
            var byteContents = new byte[toRead.Length];
            fs.Read(byteContents, 0, (int)toRead.Length);
            fs.Close();
            return Encoding.UTF8.GetString(byteContents);
        }

        public void WriteFile(FileInfo toWrite, string fileContents)
        {
            if (toWrite.Exists)
                toWrite.Delete();

            using var fs = toWrite.Create();
            var byteContents = Encoding.UTF8.GetBytes(fileContents);
            fs.Write(byteContents, 0, byteContents.Length);
            fs.Close();
        }
    }
}
