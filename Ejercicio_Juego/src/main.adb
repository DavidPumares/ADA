with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   G : Generator;
   --  Numero_Al_Azar : Uniformly_Distributed;
   --  Numero_Al_Azar : Floar;
   Numero_Al_Azar : Integer;
   Es_Correcto : Boolean := True;
   Numero_Oportunidades : constant Integer := 5;
   Numero : Integer;

begin
   --  La maquina piensa un numero
   --  Tu intentas  adivinar
   --  Si responder mal te dice que es mayor o menor
   --  Tienes 5 itnentos
   --  Si el usuario adivina dentro de las N oportunidades pierde
   Reset(G);
   Numero_Al_Azar := Integer((Random(G) * 100.0) + 1.0);

      for i in 1..Numero_Oportunidades loop

         -- Put(Numero_Al_Azar, Exp => 0);
         Put_Line(Numero_Al_Azar'Image);

         Get(Numero);

      if Numero = Numero_Al_Azar then
         Put_Line("Has Ganado");
         exit;

      else
         Put_Line("Has fallado");


      end if;

      if Numero < Numero_Al_Azar then
         Put_Line("El numero que quieres adivinar es mayor");

      else
         Put_Line("El numero que quieres adivinar es menor");
      end if;

   end loop;

   if Numero /= Numero_Al_Azar then
      Put_Line("Has perdido");
end if;

   null;
end Main;

