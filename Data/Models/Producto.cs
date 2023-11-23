using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class Producto
    {
        [Key]
        public int IdProducto { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        public string Descripcion { get; set; }

        public bool? Habilitado { get; set; }

        [MaxLength(255)]
        public string Tipo { get; set; }

        [MaxLength(255)]
        public string Categoria { get; set; }

        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}
