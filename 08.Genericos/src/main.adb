with Ada.Containers.Vectors;
with Ada.Text_IO; use Ada.Text_IO;
with io; use io;
with generic_io;

procedure Main is

   type Arreglo_Entero is array (Positive range <>) of Integer;
   -- Al instanciarlo tengo que definir el tamaño
   package Integer_Array_List is new Ada.Containers.Vectors (Element_Type => Integer,
                                                             Index_Type => Positive);
   use Integer_Array_List;

   Arreglo : Arreglo_Entero (1..2);
   Lista : Integer_Array_List.Vector;
begin
   Arreglo(1) := 32;
   Arreglo(2) := 33;
   --Arreglo(3) := 50;

   Ada.Text_IO.Put_Line("El contenido de- la lista dinamica es" );

   Append(Lista, 32);
   Append(Lista, 32);
   Append(Lista, 50);
      for Valor of lista loop
         Put_Line(Valor'Image);
      end loop;

      for Valor of Lista loop
         Put_Line(Valor'Image);
      end loop;
      declare

      type Entrada_Nota is new Integer range 0..10;
      subtype Nota is Entrada_Nota range 1 .. 10;

      package Integer_Array_List is new Ada.Containers.Vectors
        (Element_Type => Nota, Index_Type => Positive);
      use Integer_Array_List;

      Lista_Notas   : Integer_Array_List.Vector;
      --Dato_entrada : Integer;
      --  --  --        --Lo pase a...
      Dato_entrada : Entrada_Nota;

   begin
      loop
         --Dato_entrada:= Get_Integer_Between(0, Integer(Nota'Last),"Di una Nota. Cero Para Terminar");
         --Lo reemplazo por (Me gustaria evitar el casteo en la siguiente linea igual)
         Dato_entrada := Entrada_Nota(Get_Integer_Between(Integer(Entrada_Nota'First), Integer(Entrada_Nota'Last),"Di una Nota. Cero Para Terminar"));

         if Dato_entrada /= 0 then
            -- Append (Lista_Notas, Nota(Dato_entrada));
            -- Lo remplazo por
            Append (Lista_Notas, Dato_entrada);
         end if;
         exit when (Dato_entrada = 0);
      end loop;

      Put_Line("Tus notas son");

      for Valor of Lista_Notas loop
         Put_Line (Valor'Image);
      end loop;
      Put_Line("");
   end;

   declare
      type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);

      package Dias_io is new Generic_io (Tipo => Dias);
      use Dias_io;

      procedure Show_Dias renames Show_Discrete;
      Dia :Dias;

   begin
      --Put_Line(Dias'Range_Length'Image);
      Dia := Get_Discrete("Ingrese un dia");
      Put_Line(Dia'Image);
   end;
   null;
end Main;
