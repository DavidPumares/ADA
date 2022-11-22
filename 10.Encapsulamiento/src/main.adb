with Persona_Model; use Persona_Model;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --I�igo : Persona := new C_Persona'(Nombre => To_Unbounded_String("I�igo"));
   Millon_De_Euros : constant Dinero := 1000.00;
   I�igo : Persona := Create (Nombre => "I�igo", Apellido => "Montero");
begin
   -- I�igo.Nombre := To_Unbounded_String("I�igo") -- No es buen apractica
   I�igo.Saludar;
   I�igo.Set_Riqueza(100.00);
   Put_Line(if I�igo.Get_Riqueza > Millon_De_Euros then "Millonario" else "Pobre");
   null;
end Main;
