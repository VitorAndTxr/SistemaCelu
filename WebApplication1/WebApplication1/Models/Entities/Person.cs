using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication1.Models.Entities;

namespace WebApplication1.Models
{
    public class Person
    {
        public Person(){ }

        public Person(Guid id, string name, string docNumber, int docType, string telefone, string celular, DateTime birthDate, string city, string adress, int country, int gender, bool active, Guid createdBy, Guid modifiedBy, DateTime createdDate, DateTime lastModification)
        {
            this.id = id;
            this.name = name ?? throw new ArgumentNullException(nameof(name));
            this.docNumber = docNumber ?? throw new ArgumentNullException(nameof(docNumber));
            this.docType = docType;
            this.telefone = telefone;
            this.celular = celular;
            this.birthDate = birthDate;
            this.city = city;
            this.adress = adress;
            this.country = country;
            this.gender = gender;
            this.active = active;
            this.createdBy = createdBy;
            this.modifiedBy = modifiedBy;
            this.createdDate = createdDate;
            this.lastModification = lastModification;
        }

        private Guid id { get; set; }
        private string name { get; set; }
        private string docNumber { get; set; }
        private int docType { get; set; }
        private string telefone { get; set; }
        private string celular { get; set; }
        private DateTime birthDate { get; set; }
        private string city { get; set; }
        private string adress { get; set; }
        private int country { get; set; }
        private int gender { get; set; }
        private bool active { get; set; }
        private Guid createdBy { get; set; }
        private Guid modifiedBy { get; set; }
        private DateTime createdDate { get; set; }
        private DateTime lastModification { get; set; }
    }
}