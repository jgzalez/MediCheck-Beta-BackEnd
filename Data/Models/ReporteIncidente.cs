using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class ReporteIncidente
    {
        [Key]
        public int IdIncidente { get; set; }

        [Required]
        [ForeignKey("UsuarioPlan")]
        public int IdUsuarioPlan { get; set; }
        public virtual UsuarioPlan UsuarioPlan { get; set; }

        [Required]
        public string Descripcion { get; set; }
        public int? IdEstablecimiento { get; set; }
        public virtual Establecimiento Establecimiento { get; set; }
        public int? IdProducto { get; set; }
        public virtual Producto Producto { get; set; }

        [MaxLength(255)]
        public string Estado { get; set; }

        public DateTime? FechaIncidente { get; set; }
        [Required]
        public DateTime FechaRegistro { get; set; }
    }
}
