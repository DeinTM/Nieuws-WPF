//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DehouwerDein_a2._1_DM_Project.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Gebruiker
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Gebruiker()
        {
            this.Auteur = new HashSet<Auteur>();
            this.Reactie = new HashSet<Reactie>();
        }
    
        public int id { get; set; }
        public string naam { get; set; }
        public string voornaam { get; set; }
        public string geslacht { get; set; }
        public Nullable<System.DateTime> geboortedatum { get; set; }
        public string beroep { get; set; }
        public string opleiding { get; set; }
        public string homepage { get; set; }
        public string avatar { get; set; }
        public bool abonnee { get; set; }
        public string email { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Auteur> Auteur { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Reactie> Reactie { get; set; }
    }
}