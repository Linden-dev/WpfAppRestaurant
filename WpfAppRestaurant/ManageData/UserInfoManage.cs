using System.Linq;
using WpfAppRestaurant.Data;
using WpfAppRestaurant.Service;

namespace WpfAppRestaurant.ManageData
{
    internal static class UserInfoManage
    {
        public static bool IsUserExists(string login, string password)
        {
            string encryptPassword = CryptService.EncryptSha256(password);

            user item;
            using (var db = new DbRestaurantUserInfo())
            {
                item = db.user.AsNoTracking().Where(l => l.title == login && l.password == encryptPassword).FirstOrDefault();
            }
            return item != null;
        }
    }
}
