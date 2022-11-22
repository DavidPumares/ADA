with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --Iñigo : Persona := new C_Persona'(Nombre => To_Unbounded_String("Iñigo"));
   Millon_De_Euros : constant Dinero := 1000.00;
   Iñigo : Persona := Create (Nombre => "Iñigo", Apellido => "Montero");
begin
   -- Iñigo.Nombre := To_Unbounded_String("Iñigo") -- No es buen apractica
   Iñigo.Saludar;
   Iñigo.Set_Riqueza(100.00);
   Put_Line(if Iñigo.Get_Riqueza > Millon_De_Euros then "Millonario" else "Pobre");
   null;
end Main;
