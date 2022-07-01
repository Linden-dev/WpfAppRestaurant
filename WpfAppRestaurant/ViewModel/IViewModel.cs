using System;

namespace WpfAppRestaurant.ViewModel
{
    internal interface IViewModel
    {
        Action CloseAction { get; set; }

    }
}