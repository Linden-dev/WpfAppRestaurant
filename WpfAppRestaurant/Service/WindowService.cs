using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfAppRestaurant.ViewModel;

namespace WpfAppRestaurant.Service
{
    static class WindowService
    {
        public static void ShowWindow<T>(IViewModel DataContext) where T : Window, new()
        {
            var window = new T();
            window.DataContext = DataContext;
            window.Show();
        }
    }
}
