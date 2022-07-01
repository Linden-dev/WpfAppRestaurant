using System;
using System.Windows;
using WpfAppRestaurant.ViewModel;

namespace WpfAppRestaurant.View
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        public AuthorizationWindow()
        {
            InitializeComponent();
            IViewModel vm = new AuthorizationViewModel();
            DataContext = vm;
            if (vm.CloseAction == null)
                vm.CloseAction = new Action(this.Close);
        }

    }
}
