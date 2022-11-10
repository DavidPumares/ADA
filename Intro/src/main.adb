with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Main is

begin
   declare
      Edad : Integer := 16;
      Default_Mayoria_Edad : constant Integer := 18;
      Defaul_Persona_Mayor : constant Integer := 60;

      begin
      Put_Line("Ingrese su edad");
      -- Edad := Get_Line (Tipos incompatibles no funciona)
      Edad := Integer'Value(Get_Line);
      --Get(Edad);

      if Edad >= Defaul_Persona_Mayor then --if Edad .. Defaul_Persona_Mayor then (Esos .. significan rango) entre Edad y default
         Put_Line("Usted es un Jubilado");

      elsif Edad >= Default_Mayoria_Edad then
         Put_Line("Usted es Mayor de Edad");

      else
         Put_Line("Usted es menor de edad");

      end if;
      end;
   -- Pedir al usuario un numero y decir si es par o impar

   declare
      Numero : Integer;

      begin
      Put_Line("Ingrese un numero");
      Numero := Integer'Value(Get_Line);

      if (Numero mod 2) = 0 then
         Put_Line("Su numero es par");
      else
         Put_Line("Su numero es impar");

      end if;

      Put_Line( if(Numero mod 2) = 0 then "Es par" else "Es impar");
   end;

   declare
   begin
      Put_Line("Cuenta Regresiva");

      for i in reverse 1..10 loop
         Put_Line(i'Image);
         delay 1.0; --Espera un float, por eso el .0

      end loop;
      Put_Line("Despegue");
   end;

   -- Preguntar al usuario el nombre y cuantas veces quieres que te salude y saludarle
   Put_Line("Ingrese su nombre");
      declare
      Numero : Integer;
      Nombre : String := Get_Line;
         begin
            Put_Line("Hola ¿Cuantas veces quieres que te salude?");
            Get(Numero);

            for i in 1..Numero loop
            Put_Line("Hola");

            end loop;
   end;

   declare
      N : Integer;
      begin
         Put_Line("Inserte su numero");
         Get(N);

         while N > 0 loop
            N := N/2;
              Put_Line("Divido 2 es: " & N'Image);
         end loop;
   end;

begin
   declare
      Numero : Integer;
      Suma : Integer := 0;

   begin
      Put_Line("Que número quiere");
      Get(Numero);

      while Numero /= 0 loop
         Suma := Suma + Numero;

         Put_Line("Que otro número quieres");
         Get(Numero);


         end loop;

         Put_Line("La suma total es:" & Suma'Image);
         end;
   end;

   null;
end Main;
