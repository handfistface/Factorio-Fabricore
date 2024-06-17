using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fabricore.Generator.Console.Utility
{
    public class FileManipulator
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
    }
}
