using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace WpfAppRestaurant.Service
{
    static class MessageBoxService
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
            switch(messageType)
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
