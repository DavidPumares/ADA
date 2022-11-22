with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Alumno_Model; use Alumno_Model;
with Ada.Containers.Vectors;

procedure Main is

   Alumno_1 : Alumno := Create (Nombre => "Iñigo", Notas => 5);
   type Entrada_Nota is new Integer range 0..10;
   subtype Nota is Entrada_Nota range 1 .. 10;
   package Integer_Array_List is new Ada.Containers.Vectors
     (Element_Type => Nota, Index_Type => Positive);
   use Integer_Array_List;

   Lista_Notas   : Integer_Array_List.Vector;
   use Integer_Array_List;
   Notas : Integer_Array_List.Vector;
   Dato_entrada : Entrada_Nota;

begin
   -- Crear un paquete que se llamará Alumno_Model
   -- Crear Clase Alumno con (Nombre, Vector dinámico Generico
   -- (Ada.Containers.Vectors) de Notas
   -- Tiene que tenoer un constructor
   -- Tiene que tener un metodo Rendir_Examen que recibe una Nota
   -- Tiene que tener una nota llamado Calcular_Promedio que devuelva el promedio
   -- En el main un caso de prueba que verifique

   loop


      if Dato_entrada /= 0 then
         Append (Lista_Notas, Dato_entrada);
         end if;
      exit when (Dato_entrada = 0);
   end loop;



   null;
end Main;
