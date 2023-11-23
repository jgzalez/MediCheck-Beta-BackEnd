using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{
    public class PlanUsuario
    {

        [Key]
        public int IdPlan { get; set; }

        [Required]
        [MaxLength(255)]
        public string Descripcion { get; set; }

        [Required]
        [ForeignKey("Aseguradora")]
        public int IdAseguradora { get; set; }

        public virtual Aseguradora Aseguradora { get; set; }

        [Required]
        public DateTime FechaRegistro { get; set; }
    }

}
