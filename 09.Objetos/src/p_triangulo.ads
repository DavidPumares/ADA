with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package p_triangulo is

   type C_Triangulo is tagged record
      Base : Float;
      Altura : Float;
      
   end record;
   
   type Triangulo is access C_Triangulo'Class;
   
   function Calcular_Area(This : C_Triangulo) return Float;

end p_triangulo;
