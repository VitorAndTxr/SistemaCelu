using System;

namespace WebApplication1.Models.Entities
{
    public abstract class BaseControl
    {
        public Guid? Id { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime ModifiedDate { get; set; }
        public bool Active { get; set; }
        public Guid? CreatedById { get; set; }
        public Guid? ModifiedById { get; set; }
        public string CreatedDateFormatted => CreatedDate.ToString("dd/MM/yyyy HH:mm");
        public string ModifiedDateFormatted => ModifiedDate.ToString("dd/MM/yyyy HH:mm");
    }
}