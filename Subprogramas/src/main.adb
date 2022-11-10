with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   -- PROCEDURE 1
   procedure Put_Nice_Line
     (Texto :in String;
      Subrayado : Character := '*') is

      use Ada.Strings.Fixed;
   begin
      Put_Line(Texto);
      Put_Line(Texto'Length * Subrayado);
   end;

   -- PROCEDURE 2
   procedure Put_Reverse_Line (Texto :in String) is
      use Ada.Strings.Fixed;

   begin
      for Letter of reverse Texto loop
         Put(Letter);
      end loop;

   end;

   -- PROCEDURE 3
   Procedure Put_Hacker_Line(Texto :in String;
                             i : Character := '1';
                             e: Character := '3';
                             a : Character := '4';
                             s : Character := '5';
                            o : Character := '0') is
      use Ada.Strings.Fixed;

   begin
      for Letra of Texto loop
         case Letra is
            when 'i' => Put(i);
            when 'e' => Put(e);
            when 'a' => Put(a);
            when 's' => Put(s);
            when 'o' => Put(o);
            when others => Put(Letra);
         end case;
      end loop;
      Put_Line("");

   end;

   -- FUNCION

   function Area_Rectangulo(Lado_Mayor : in Float;
                            Lado_Menor :in Float) return Float is
   begin
      return Lado_Mayor * Lado_Menor;
   end;

   -- PROCEDURE 4
   procedure Intercambiar (A : in out Integer; B : in out Integer) is

      Aux : Integer := A;

   begin
      A := B;
      B := Aux;
   end;



begin
   --  Put_Nice_Line(Texto => "Hola Subprogramas",
   --                Subrayado => '-');
   --  Put_Nice_Line("Hola Subprogramas", '-');

   --  Put_Reverse_Line("Hola");

   --  Put_Hacker_Line("Hola");

   --  declare
   --     Area : Float;
   --  begin
   --     Area := Area_Rectangulo(3.0, 5.0);
   --     Put(Area, Exp => 0, Aft => 2);
   --     Put_Line("");
   --  end;
   --

   declare
      Primero : Integer := 10;
      Segundo : INteger := 20;
   begin
      Put_Line ("Antes de Intercambiar" & Primero'Image & "" & Segundo'Image);
        Intercambiar(Primero, Segundo);
      Put_Line ("Después de Intercambiar" & Primero'Image & "" & Segundo'Image);

   end;


   null;
end Main;
