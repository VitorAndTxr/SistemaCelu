using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models.Entities
{
    public class Morador
    {
        public Morador() { }
        public Morador(Guid id, Guid personId, int numLavanderia, List<int> dpto, int statusMorador, int chamadasAtencao, DateTime entradaCelu, int curso, int universidade, int quarto, bool active, Guid createdBy, Guid modifiedBy, DateTime createdDate, DateTime lastModification)
        {
            this.id = id;
            this.personId = personId;
            this.numLavanderia = numLavanderia;
            this.dpto = dpto;
            this.statusMorador = statusMorador;
            this.chamadasAtencao = chamadasAtencao;
            this.entradaCelu = entradaCelu;
            this.curso = curso;
            this.universidade = universidade;
            this.quarto = quarto;
            this.active = active;
            this.createdBy = createdBy;
            this.modifiedBy = modifiedBy;
            this.createdDate = createdDate;
            this.lastModification = lastModification;
        }

        private Guid id { get; set; }
        private Guid personId { get; set; }
        private int numLavanderia { get; set;}
        private List<int> dpto { get; set; }
        private int statusMorador { get; set;}
        private int chamadasAtencao { get; set; }
        private DateTime entradaCelu { get; set; }
        private int curso { get; set; }
        private int universidade { get; set; }
        private int quarto { get; set; }
        private bool active { get; set; }
        private Guid createdBy { get; set; }
        private Guid modifiedBy { get; set; }
        private DateTime createdDate { get; set; }
        private DateTime lastModification { get; set; }
    }