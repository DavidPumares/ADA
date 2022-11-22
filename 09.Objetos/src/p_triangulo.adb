package body p_triangulo is

   function Calcular_Area(This : C_Triangulo) return Float is
   begin
      return This.Base * This.Altura/2.0;
   end;


end p_triangulo;
