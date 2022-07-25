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
            string enword = CryptService.CryptCesar(word);
            string deword = CryptService.CryptCesar(enword);
            return (enword, deword);
        }
        [Test]
        public void TestCesarRus()
        {
            string word = "ÀÁÂÃÄÅ¨ÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞßàáâãäå¸æçèéêëìíîïğñòóôõö÷øùúûüışÿ";
            var res = CryptCesar(word);
            Assert.AreNotEqual(word, res.Item1);
            Assert.AreNotEqual(res.Item1, res.Item2);
            Assert.AreEqual(word, res.Item2);
        }

        [Test]
        public void TestCesarEng()
        {
            string word = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnoprqstuvwxyz";
            string enword = CryptService.CryptCesar(word);
            Assert.IsTrue(word.Length == enword.Length, "Different length");
            string deword = CryptService.CryptCesar(enword);
            Assert.AreNotEqual(word, enword);
            Assert.AreNotEqual(enword, deword);
            Assert.AreEqual(word, deword);
        }

    }
}