with io; use io;
with utils; use utils;
with generic_io;
procedure Main is

   type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   package Dias_IO is new Generic_IO (Tipo => Dias);
   use Dias_IO;

   procedure Show_Dias renames Show_Discrete;
   procedure Swap_Dias is new Swap(Dias);
   procedure Show_Vertical is new Show_Vertical(T => Dias,
                                                --To_String => Dias'Image,
                                                To_String => Dias_IO.To_String);
   Dia : Dias;
   Otro_Dia : Dias;

begin
   Dia := Get_Discrete("Ingrese un dia");
   Otro_Dia := Get_Discrete("Ingrese otro dia");

   Show_Vertical(Dia);

   Swap(Dia, Otro_Dia);
   Put_Line("Los dias intercambiados son"
            & To_String(Dia)
            & "y"
            & To_String(Otro_Dia));
   declare
      use Utils;
      procedure Show_Vertical_Integer is new Show_Vertical
        (T => Integer,
           To_String => Integer'Image);

      N : Integer := 1234;
      begin
         Show_Vertical(N);
      end;

   null;
end Main;
