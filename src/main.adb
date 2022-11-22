with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   -- Aqui hay 2 varibales sobrecargadas  pero las diferencia por el tipo de netrada Integer y Float
   function suma (entero_1 :in Float; entero_2 :in Float) return Float is
   begin

      return(entero_1 + entero_2);
   end;

   function suma (entero_1 :in Integer; entero_2 :in Integer) return Integer is
   begin

      return(entero_1 + entero_2);
   end;

   -- Sobrecargo una funcion haciendo que pueda sumar un Integer y un Float
   function "+" (entero_1 :in Integer; entero_2 :in Float) return Float is
   begin

      return(entero_1 + Float(entero_2));
   end;

   -- Renombro la funcion Put_Line por printF
   procedure PrintF(Item : String) renames Put_Line;
begin
   declare
      A : Integer := 2;
      B : Integer := 2;
      res : Integer;

      FA : Float := 2.5;
      FB: FLoat := 2.5;
      Fres: Float;

   begin
      Fres := suma(FA,FB);
      printF("La suma de " & FA'Image & " y " & FB'Image & " es igual a " & Fres'Image);

      res := suma(A, B);
      printF("La suma de " & A'Image & " y " & B'Image & " es igual a " & res'Image);

      Fres := A + FB;
   end;

   null;
end Main;
