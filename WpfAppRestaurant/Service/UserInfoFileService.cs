using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace WpfAppRestaurant.Service
{
    static class UserInfoFileService
    {
        private static string dir = @"\bin";
        private static string path = dir + @"\user.data";

        public static void SaveUserInfo(string login, string password)
        {
            var threadEncryptLogin = Task.Run(() => CryptService.EncryptCesar(login));
            var threadEncryptPassword = Task.Run(() => CryptService.EncryptCesar(password));

            if (Directory.Exists(Environment.CurrentDirectory + path) == false)
                Directory.CreateDirectory(Environment.CurrentDirectory + dir);

            Task.WaitAll(threadEncryptLogin, threadEncryptPassword);
            Task.Run(() => CryptService.EncryptFile(Environment.CurrentDirectory + path, threadEncryptLogin.Result + " " + threadEncryptPassword.Result));
        }

        public static bool IsUserInfoExists()
        {
            return File.Exists(Environment.CurrentDirectory + path);
        }

        public static (string, string) LoadUserInfo()
        {
            try
            {
                string data = CryptService.DecryptFile(Environment.CurrentDirectory + path);
                string[] arr = data.Split(' ');
                string login = CryptService.DecryptCesar(arr[0]);
                // Храним пароль в памяти зашифрованным
                return (login, arr[1]);
            }
            catch
            {
                return ("", "");
            }
        }
    }
}
