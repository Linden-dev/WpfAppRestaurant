using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using WpfAppRestaurant.Service;
using WpfAppRestaurant.ManageData;
using System.Windows.Input;
using System.Threading;
using System.Windows.Controls;
using System.Security;
using System.Windows.Threading;

namespace WpfAppRestaurant.ViewModel
{
    class AuthorizationViewModel : IViewModel, INotifyPropertyChanged
    {
        #region Fields
        private string login, password;
        private bool? isChecked;
        private System.Windows.Visibility progressBarVisibility;
        private readonly ICommand signInCommand;
        private readonly DelegateCommand signInCommanda;
        #endregion

        #region Properties
        public string Login
        {
            get { return login; }
            set
            {
                login = value;
                OnPropertyChanged("Login");
            }
        }
        public bool? IsChecked
        {
            get { return isChecked; }
            set
            {
                isChecked = value;
                OnPropertyChanged("IsChecked");
            }
        }
        public System.Windows.Visibility ProgressBarVisibility
        {
            get { return progressBarVisibility; }
            set
            {
                progressBarVisibility = value;
                OnPropertyChanged("ProgressBarVisibility");
            }
        }
        #endregion

        #region Commands

        public DelegateCommand SignInCommanddfd
        {
            get { return signInCommanda; }
        }

        public ICommand SignInCommand
        {
            get { return signInCommand; }
        }
        #endregion

        #region Actions
        public Action CloseAction { get; set; }
        #endregion

        public AuthorizationViewModel()
        {
            ProgressBarVisibility = System.Windows.Visibility.Hidden;
            IsChecked = true;

            signInCommand = new DelegateCommand(SignIn);

            if (UserInfoFileService.IsUserInfoExists())
            {
                var info = UserInfoFileService.LoadUserInfo();
                Login = info.Item1;
                password = info.Item2;
            }
        }

        #region Methods
        private bool SignIn()
        {
            // Расшифровываем пароль и удаляем символы перехода на пустую строку ( \r\n )
            bool isExists = UserInfoManage.IsUserExists(login, password);
            if (isExists && isChecked.Value)
            {
                UserInfoFileService.SaveUserInfo(login, password);
            }
            if (!isExists)
            {
                ProgressBarVisibility = System.Windows.Visibility.Hidden;
                MessageBoxService.ShowMessage("Неверный логин или пароль!", "Ошибка входа", MessageBoxService.MessageType.Warning);
            }
            return isExists;
        }

        private void SignIn(object parameter)
        {
            var passwordBox = parameter as PasswordBox;
            if (login.Length == 0 || passwordBox.Password.Length == 0)
                MessageBoxService.ShowMessage("Введите логин и пароль", "Ошибка входа", MessageBoxService.MessageType.Warning);
            else
            {
                password = passwordBox.Password == "**********" ? CryptService.DecryptCesar(password).Remove(password.Length - 2, 2) : passwordBox.Password;

                ProgressBarVisibility = System.Windows.Visibility.Visible;
                var t = Task.Run(() => SignIn()).
                    ContinueWith((task) =>
                {
                    // Если пользователь существует
                    if (task.Result)
                    {
                        WindowService.ShowWindow<View.MainWindow>(new MainViewModel());
                        CloseAction();
                    }
                }, TaskScheduler.FromCurrentSynchronizationContext());
            }
        }
        #endregion

        #region INotifyPropertyChanged Members
        public event PropertyChangedEventHandler PropertyChanged;

        public void OnPropertyChanged([CallerMemberName] string prop = "")
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
        #endregion
    }
}
