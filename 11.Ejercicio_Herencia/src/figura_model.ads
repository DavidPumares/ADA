package Figura_Model is
   
   type C_Figura is abstract tagged private;
   type Figura is access C_Figura'Class;
      
      procedure D;
   function Calcular_Area(This: in C_Figura) return Float is abstract;
      
   private
      
      type C_Figura is abstract tagged record
         null;
      end record;
        
end Figura_Model;
