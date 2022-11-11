with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Main is

   function Get_Non_Empty_Line(Prompt : String := "Ingrese un texto no vacio";
                               Error : String := "Se ha producido un error") return String is
   begin
      Put_line(Prompt);
      loop
         declare
            Texto : String := Get_Line;
            begin
               if (Texto'Length > 0) then
                  return Texto;
               end if;
               Put_Line(Error);
            end;
         end loop;
   end Get_Non_Empty_Line;

   function Try_Convert_Integer(Texto :in String;
                                Texto_Como_Entero :out Integer) return Boolean is
   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;

   exception
         when others => return False;
   end Try_Convert_Integer;



   function Get_Integer
     (Prompt:String := "Ingresa su edad";
      Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer is
      Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result))) loop
             Put_Line(Error);

             end loop;
             return Result;
   end Get_Integer;

   function Get_Integer_Between(Min : Integer := 70;
                                Max : Integer := 18;
                                Prompt : String := "Ingrese un numero";
                                Empty_Error : String := "Texto vacio vuelva a intentarlo";
                                Underflow_Error : String := "Numero muy pequeño debe ser mayor a ";
                                Overflow_Error : String := "Numero muy grande debe ser menor a ") return Integer is
   begin
      Put_Line(Prompt);
      declare
         Numero : Integer;
         Correcto : Boolean := True;
      begin

         while Correcto loop
            Get(Numero);

            if Numero > Min then
               Put_Line(Overflow_Error);

            elsif Numero < Max then
               Put_Line(Underflow_Error);

            else
               Correcto := False;


            end if;
         end loop;
         return Numero;
      end;

   end Get_Integer_Between;

begin
   declare
      Nombre : String := Get_Non_Empty_Line("Ingrese su nombre");
      Edad : Integer := Get_Integer("Ingrese su edad");
   begin
      Edad := Get_Integer_Between;
      Put_Line("Hola " & Nombre & " su edad es" & Edad'Image & " años");

      end;

end Main;
