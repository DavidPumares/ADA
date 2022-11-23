with Figura_Model; use Figura_Model;

package Cuadrado is

   type C_Rectangulo is new C_Figura with private;
   type Rectangulo is access C_Rectangulo'Class;
   
   function Create (Nombre : String) return Rectangulo;
   
   overriding function Calcular_Area (This: in C_Rectangulo) return Float;
   
private
   
   type C_Rectangulo is new C_Figura with record
      Base : Float := 0.0;
      Altura: Float := 0.0;
   end record;

end Cuadrado;
