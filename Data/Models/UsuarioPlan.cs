using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace API.Data.Models
{

    public class UsuarioPlan
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [ForeignKey("Usuario")]
        public int IdUsuario { get; set; }
        public virtual Usuario Usuario { get; set; }

        [Required]
        [ForeignKey("PlanUsuario")]
        public int IdPlan { get; set; }
        public virtual PlanUsuario PlanUsuario { get; set; }

        public DateTime? FechaVencimiento { get; set; }
    }

}
