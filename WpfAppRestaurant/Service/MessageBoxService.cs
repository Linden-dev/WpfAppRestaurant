using System.Windows;

namespace WpfAppRestaurant.Service
{
    internal static class MessageBoxService
    {
        public enum MessageType
        {
            Information = 1,
            Warning,
            Error,
            Question
        }

        public static void ShowMessage(string text, string caption, MessageType messageType)
        {
            switch (messageType)
            {
                case MessageType.Warning:
                    {
                        MessageBox.Show(text, caption, MessageBoxButton.OK, MessageBoxImage.Warning);
                        break;
                    }
            }
        }
    }
}
