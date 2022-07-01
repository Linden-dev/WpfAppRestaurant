using System;

namespace WpfAppRestaurant.ViewModel
{
    interface IViewModel
    {
        Action CloseAction { get; set; }

    }
}