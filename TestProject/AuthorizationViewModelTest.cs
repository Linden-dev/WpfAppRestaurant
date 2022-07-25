using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Text;
using WpfAppRestaurant.ViewModel;

namespace TestProject1
{
    class AuthorizationViewModelTest
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void TestSignInCorrect()
        {
            var viewModel = new AuthorizationViewModel();
            viewModel.Login = "hallmaster";
            var passwordBox = new
            {
                Password = "111"
            };
            viewModel.SignInCommand.Execute(passwordBox);
            Assert.IsTrue(viewModel.IsExecuted);
            Assert.IsTrue(viewModel.IsLoggedIn);
        }

        [Test]
        public void TestSignInWrong()
        {
            var viewModel = new AuthorizationViewModel();
            viewModel.Login = "hallmaster";
            var passwordBox = new
            {
                Password = "7"
            };
            viewModel.SignInCommand.Execute(passwordBox);
            Assert.IsTrue(viewModel.IsExecuted);
            Assert.IsFalse(viewModel.IsLoggedIn);
        }
    }
}
