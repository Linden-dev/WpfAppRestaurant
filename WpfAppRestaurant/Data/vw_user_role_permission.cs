namespace WpfAppRestaurant.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class vw_user_role_permission
    {
        [StringLength(255)]
        public string user_title { get; set; }

        [StringLength(255)]
        public string role_title { get; set; }

        [StringLength(255)]
        public string permission_title { get; set; }

        [StringLength(30)]
        public string firstname { get; set; }

        [StringLength(30)]
        public string middlename { get; set; }

        [StringLength(30)]
        public string lastname { get; set; }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int user_id_user { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int role_id_role { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id_permission { get; set; }

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id_role_permission { get; set; }

        [Key]
        [Column(Order = 4)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id_user_role { get; set; }
    }
}
