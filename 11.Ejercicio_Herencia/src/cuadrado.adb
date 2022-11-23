with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
  
package body Cuadrado is

   function Create(Nombre : String := To_Unbounded_String(Nombre),
                   Base : Float := 0.0,
                   Altura : Float := 0.0) return Rectangulo is
   begin
      return new C_Rectangulo'(C_Figura with;
                               Nombre => To_Unbounded_String(Nombre),
                               Base => Base,
                               Altura => Altura);
      
end Cuadrado;
