using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class Cobertura
    {
        [Key]
        public int IdCobertura { get; set; }

        [Required]
        [ForeignKey("Producto")]
        public int IdProducto { get; set; }
        public virtual Producto Producto { get; set; }

        [Required]
        [ForeignKey("PlanUsuario")]
        public int IdPlan { get; set; }
        public virtual PlanUsuario PlanUsuario { get; set; }

        public bool? Cubre { get; set; }
        public decimal? Porcentaje { get; set; }
        public DateTime? FechaVencimiento { get; set; }
        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}
