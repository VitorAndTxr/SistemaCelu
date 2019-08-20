using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models.Entities
{
    public class Resident : Person
    {
        private Guid id { get; set; }
        private int numLavanderia { get; set; }
        private List<int> dpto { get; set; }
        private int statusMorador { get; set; }
        private int chamadasAtencao { get; set; }
        private DateTime entradaCelu { get; set; }
        private int curso { get; set; }
        private int universidade { get; set; }
        private int quarto { get; set; }
    }
}