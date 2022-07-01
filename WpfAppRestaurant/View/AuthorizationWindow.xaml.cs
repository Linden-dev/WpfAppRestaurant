using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfAppRestaurant.Service;
using static WpfAppRestaurant.Service.UserInfoFileService;
using WpfAppRestaurant.Data;
using System.Threading;
using System.ComponentModel;
using WpfAnimatedGif;
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
