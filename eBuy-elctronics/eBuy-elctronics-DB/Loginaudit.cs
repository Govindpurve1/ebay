//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eBuy_elctronics_DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Loginaudit
    {
        public int ID { get; set; }
        public Nullable<int> Loginid { get; set; }
        public Nullable<System.DateTime> Logindate { get; set; }
        public string Logindesc { get; set; }
    
        public virtual Logindetail Logindetail { get; set; }
    }
}