with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Alumno_Model is

   type Nota is range 1..10;
   type C_Alumno is tagged private;
   type Alumno is access C_Alumno'Class;

   function Create(Nombre : String; 
                   Notas : Nota) return Alumno;
   
   function Get_Nombre (This: C_Alumno) return String;
   function Get_Nota(This: C_Alumno) return Nota;
   
   private
   type C_Alumno is tagged record
      Nombre : Unbounded_String;
      Notas : Nota;
   end record;

end Alumno_Model;
