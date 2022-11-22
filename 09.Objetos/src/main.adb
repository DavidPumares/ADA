with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with p_persona; use p_persona;
with p_heroe; use p_heroe;
with p_triangulo; use p_triangulo;
procedure Main is

   Una_Persona : Persona := null;
   Un_Heroe : Heroe := null;
   Un_Triangulo : Triangulo := null;

   begin
   Una_Persona := new C_Persona'(Nombre => To_Unbounded_String("Estaban"),
                                 Apellido => To_Unbounded_String("Calabria"));
   -- Crear e instanciar una clase llamada "Heroe"
   -- Los heroes tienen un nombre, fuerza y HP

   Un_Heroe := new C_Heroe'(Nombre => To_Unbounded_String("Might"),
                            Fuerza => 10.0,
                            HP => 200.0);
   Un_Triangulo := new C_Triangulo'(Base => 10.0, Altura => 20.0);

   Una_Persona.Saludar;
   Un_Heroe.Presentar;
   Put_Line(Un_Triangulo.Calcular_Area'Image);
   null;
end Main;
