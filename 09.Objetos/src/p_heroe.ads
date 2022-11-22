with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package p_heroe is

   type C_Heroe is tagged record
      Nombre : Unbounded_String;
      Fuerza : Float;
      HP : FLoat;
   end record;
   
   type Heroe is access C_Heroe'Class;
   
   procedure Presentar(This : C_Heroe);

end p_heroe;
