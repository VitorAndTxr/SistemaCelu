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

        public Person(Guid id, string name, string docNumber, int docType, string motherName, string fatherName, string telefone, string celular, Guid bloodType, string telefoneEmergencia, DateTime birthDate, string city, string adress, int country, int gender, bool active, Guid createdBy, Guid modifiedBy, DateTime createdDate, DateTime lastModification)
        {
            this.id = id;
            this.name = name ?? throw new ArgumentNullException(nameof(name));
            this.docNumber = docNumber ?? throw new ArgumentNullException(nameof(docNumber));
            this.docType = docType;
            this.motherName = motherName ?? throw new ArgumentNullException(nameof(motherName));
            this.fatherName = fatherName ?? throw new ArgumentNullException(nameof(fatherName));
            this.telefone = telefone ?? throw new ArgumentNullException(nameof(telefone));
            this.celular = celular ?? throw new ArgumentNullException(nameof(celular));
            this.bloodType = bloodType;
            this.telefoneEmergencia = telefoneEmergencia ?? throw new ArgumentNullException(nameof(telefoneEmergencia));
            this.birthDate = birthDate;
            this.city = city ?? throw new ArgumentNullException(nameof(city));
            this.adress = adress ?? throw new ArgumentNullException(nameof(adress));
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
        private string motherName { get; set; }
        private string fatherName { get; set; }
        private string telefone { get; set; }
        private string celular { get; set; }
        private int bloodType { get; set; }
        private string telefoneEmergencia { get; set; }
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