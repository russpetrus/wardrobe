//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Top
    {
        public Top()
        {
            this.Outfits = new HashSet<Outfit>();
        }
    
        public int TopID { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
        public string Type { get; set; }
        public string Season { get; set; }
        public string Occasion { get; set; }
        public string Photo { get; set; }
    
        public virtual ICollection<Outfit> Outfits { get; set; }
        public virtual Top Tops1 { get; set; }
        public virtual Top Top1 { get; set; }
    }
}
