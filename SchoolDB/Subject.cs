//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchoolDB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Subject
    {
        public int Id { get; set; }
        public string Name { get; set; }
    
        public virtual Lecturer Lecturer { get; set; }
        public virtual Course Course { get; set; }
    }
}
