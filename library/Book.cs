//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace library
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        public Book()
        {
            this.BookDelivery = new HashSet<BookDelivery>();
        }
    
        public int Id { get; set; }
        public string name { get; set; }
        public int total_count { get; set; }
        public int left_count { get; set; }
        public string knowledge_area { get; set; }
        public int ReaderId { get; set; }
    
        public virtual ICollection<BookDelivery> BookDelivery { get; set; }
    }
}