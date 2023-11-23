using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class ProductosGuardados
    {
        [Key]
        [Column(Order = 1)]
        [ForeignKey("Usuario")]
        public int IdUsuario { get; set; }
        public virtual Usuario Usuario { get; set; }

        [Key]
        [Column(Order = 2)]
        [ForeignKey("Producto")]
        public int IdProducto { get; set; }
        public virtual Producto Producto { get; set; }

        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}
