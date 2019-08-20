using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Models.Entities;

namespace WebApplication1.Models
{
    public class Person: BaseControl
    {
        private Guid personId { get; set; }
        private string name { get; set; }
        private string docNumber { get; set; }
        private int docType { get; set; }
        private string motherName { get; set; }
        private string fatherName { get; set; }
        private string telefone { get; set; }
        private string celular { get; set; }
        private string email { get; set; }
        private int bloodType { get; set; }
        private string telefoneEmergencia { get; set; }
        private DateTime birthDate { get; set; }
        private string city { get; set; }
        private string adress { get; set; }
        private int country { get; set; }
        private int gender { get; set; }
    }
}