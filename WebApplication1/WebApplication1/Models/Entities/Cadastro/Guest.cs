using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models.Entities
{
    public class Guest : Person
    {
        private Guid guestId { get; set; }
        private int cama { get; set; }
        private DateTime checkIn{ get; set; }
        private DateTime checkOut { get; set; }
    }
}