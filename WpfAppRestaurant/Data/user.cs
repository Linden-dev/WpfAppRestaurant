namespace WpfAppRestaurant.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user")]
    public partial class user
    {
        [Key]
        public int id_user { get; set; }

        public int? id_staff { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        [StringLength(255)]
        public string password { get; set; }
    }
}
