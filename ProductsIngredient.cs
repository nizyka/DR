//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp1
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProductsIngredient
    {
        public int ID { get; set; }
        public int ID_Product { get; set; }
        public int ID_Ingredient { get; set; }
    
        public virtual Ingredient Ingredient { get; set; }
        public virtual Products Products { get; set; }
    }
}
