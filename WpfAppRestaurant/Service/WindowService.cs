using System.Windows;
using WpfAppRestaurant.ViewModel;

namespace WpfAppRestaurant.Service
{
    internal static class WindowService
    {
        public static void ShowWindow<T>(IViewModel DataContext) where T : Window, new()
        {
            var window = new T();
            window.DataContext = DataContext;
            window.Show();
        }
    }
}
