with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Main is

--  begin
--  declare
--     begin
--        loop
--           Put_Line("Ingrese su nombre");
--           declare
--              Nombre : String := Get_Line;
--           begin
--              exit when (Nombre'Length = 0);
--              Put_Line("Hola " & Nombre);
--           end;
--        end loop;
--     end;
--     null;

begin
   declare
      Nota : Integer := 11;

   begin
      Put_Line("Ingrese su nota de examen");

      case Nota is
         when 0 => Put_Line("Examen copiado");
         when 1..4 => Put_Line("Reprobado");
         when 5=> Put_Line("Aprobado justo");
         when 6..7 => Put_Line("Aprobado");
         when 8..9 => Put_Line("Muy bien");
         when 10 => Put_Line("Excelente");
            when others => Put_Line("Fuera del Rango");

      end case;
   end;

end Main;
