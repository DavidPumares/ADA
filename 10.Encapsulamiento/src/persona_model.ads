with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Persona_Model is
   
   type Dinero is digits 2;
   type C_Persona is tagged private;
   type Persona is access C_Persona'Class;
   
   --Constructor
   function Create(Nombre : String; 
                   Apellido : String;
                   Riqueza_Inicial : Dinero := 0.0) return Persona;
   
   --Getters y Setters
   function Get_Nombre (This: C_Persona) return String;
   function Get_Apellido (This: C_Persona) return String;
   function Get_Riqueza(This: C_Persona) return Dinero;

   -- metodos
   procedure Saludar(This: C_Persona);
   procedure Set_Riqueza(This:out C_Persona; Value : Dinero);
   
private

   type C_Persona is tagged record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Riqueza : Dinero;
   end record;
   

   
end Persona_Model;
