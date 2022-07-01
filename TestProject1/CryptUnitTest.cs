using NUnit.Framework;
using WpfAppRestaurant.Service;

namespace TestProject1
{
    public class CryptUnitTest
    {
        [SetUp]
        public void Setup()
        {
        }
        
        private (string, string) CryptCesar(string word)
        {
            string enword = CryptService.EncryptCesar(word);
            string deword = CryptService.DecryptCesar(enword);
            return (enword, deword);
        }

        [Test]
        public void TestCryptCesarDigits()
        {
            string word = "0123456789";
            var res = CryptCesar(word);
            Assert.AreNotEqual(word, res.Item1);
            Assert.AreNotEqual(res.Item1, res.Item2);
            Assert.AreEqual(word, res.Item2);
        }
        [Test]
        public void TestCryptCesarRusAlphabet()
        {
            string word = "אבגדהו¸זחטיךכלםמןנסעףפץצקרשתûü‎‏ÿ";
            var res = CryptCesar(word);
            Assert.AreNotEqual(word, res.Item1);
            Assert.AreNotEqual(res.Item1, res.Item2);
            Assert.AreEqual(word, res.Item2);
        }

        [Test]
        public void TestEncryptCesar()
        {
            string word = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string enword = CryptService.EncryptCesar(word);
            Assert.IsTrue(word.Length == enword.Length, "Different length");
            for (int i = 0; i < word.Length; i++)
            {
                Assert.IsTrue(((char)(word[i] + 7)) == enword[i], "Different char");
            }
            string deword = CryptService.DecryptCesar(enword);
            Assert.AreNotEqual(word, enword);
            Assert.AreNotEqual(enword, deword);
            Assert.AreEqual(word, deword);
        }

    }
}