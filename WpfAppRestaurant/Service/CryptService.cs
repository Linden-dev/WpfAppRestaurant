using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace WpfAppRestaurant.Service
{
    internal static class CryptService
    {
        private static byte[] key = Encoding.UTF8.GetBytes("CULTUROLOGICALLY");

        public static string EncryptSha256(string text)
        {
            byte[] data = Encoding.UTF8.GetBytes(text);
            data = new SHA256Managed().ComputeHash(data);
            string hash = Encoding.UTF8.GetString(data);
            Console.WriteLine(hash.Length);
            Console.WriteLine("The text was encrypted by SHA256 cipher.");
            return hash;
        }

        public static string EncryptCesar(string text)
        {
            StringBuilder res = new StringBuilder();
            byte[] data = Encoding.UTF8.GetBytes(text);
            foreach (var item in data)
            {
                res.Append((char)(item + 7));
            }
            Console.WriteLine("The text was encrypted by cesar cipher.");
            return res.ToString();
        }

        public static string DecryptCesar(string text)
        {
            StringBuilder res = new StringBuilder();
            foreach (var ch in text)
            {
                res.Append((char)(ch - 7));
            }
            Console.WriteLine("The text was decrypted by cesar cipher.");
            return res.ToString();
        }

        public static void EncryptFile(string filename, string text)
        {
            try
            {
                using (FileStream fileStream = new FileStream(filename, FileMode.Create))
                {
                    using (Aes aes = Aes.Create())
                    {
                        aes.Key = key;

                        byte[] iv = aes.IV;
                        fileStream.Write(iv, 0, iv.Length);

                        using (CryptoStream cryptoStream = new CryptoStream(fileStream, aes.CreateEncryptor(),
                            CryptoStreamMode.Write))
                        {
                            using (StreamWriter encryptWriter = new StreamWriter(cryptoStream))
                            {
                                encryptWriter.WriteLine(text);
                            }
                        }
                    }
                }
                Console.WriteLine("The file was encrypted.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"The encryption of file failed. {ex}");
            }
        }

        public static string DecryptFile(string filename)
        {
            try
            {
                using (FileStream fileStream = new FileStream(filename, FileMode.Open))
                {
                    using (Aes aes = Aes.Create())
                    {
                        byte[] iv = new byte[aes.IV.Length];
                        int numBytesToRead = aes.IV.Length;
                        int numBytesRead = 0;
                        while (numBytesToRead > 0)
                        {
                            int n = fileStream.Read(iv, numBytesRead, numBytesToRead);
                            if (n == 0) break;

                            numBytesRead += n;
                            numBytesToRead -= n;
                        }

                        using (CryptoStream cryptoStream = new CryptoStream(fileStream, aes.CreateDecryptor(key, iv),
                            CryptoStreamMode.Read))
                        {
                            using (StreamReader decryptReader = new StreamReader(cryptoStream))
                            {
                                string decryptedMessage = decryptReader.ReadToEnd();
                                Console.WriteLine($"The decrypted original message: {decryptedMessage}");
                                return decryptedMessage;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"The decryption of file failed. {ex}");
                return "";
            }
        }
    }
}
