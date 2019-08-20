using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models.Entities.Financeiro
{
    public class Payment:BaseControl
    {
        private Guid payId { get; set; }
        private float value { get; set; }
        private int paymentForm { get; set; }
        private Guid paidFor { get; set; }
    }
}