with Io; use Io;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Characters.Conversions; use Ada.Characters.Conversions;
with Ada.Characters.Handling; use Ada.Characters.Handling;

procedure Main is

begin
   --  Declarando Arreglos
   declare
      type Arreglo_Numeros is array (1..3) of Positive;

      Numeros : Arreglo_Numeros;
      -- Mas_Numero : Arreglo_Numeros := (10,20,30,50); --Esto lanza una excepcion porque son mas elementos que los definidos anteriormente
      Mas_Numeros : Arreglo_Numeros := (10,20,30);
      Todavia_Mas_Numeros : Arreglo_Numeros := (2 => 100, others => 1);


      begin
      Numeros(1) := 3;
      Numeros(2) := 5;
      Numeros(3) := 19;

      for I in Numeros'Range loop
         Put_Line("Numeros("& I'Image &") = " & Numeros(I)'Image);
      end loop;

      Put("Mas_Numero = (");

      for N of Mas_Numeros loop
         Put(N'Image);
         Put(",");
      end loop;

      Put("]");
      Put_Line(" ");

      Put("Todavia_Mas_Numeros = (");
      for I in Todavia_Mas_Numeros'First..Todavia_Mas_Numeros'Last loop
         Put(Todavia_Mas_Numeros(I)'Image);
         Put(if (I /= Todavia_Mas_Numeros'Last) then "," else "");
      end loop;
      Put(")");

      -- Ejercicio Declarar un tipo Nota que permita almacenar las notas de los examenes
      -- Preguntar al alumno cuantos examenes rindio
      -- Declarar arreglo para almacenar sus examenes
      -- Preguntarle uno a uno la nota de los mismos y almacenarlo (casteo)


      --  declare
      --     type Nota is new Integer range 1..10;
      --
      --     Examenes : Integer := Get_Integer("Cuantos examenes realizo?");
      --     type Arreglo is array (1..Examenes) of Positive;
      --
      --     Nota_Examen : Nota;
      --     Numero_Examenes : Arreglo;
      --     Notas_Examenes : Arreglo;
      --  begin
      --     for I in Numero_Examenes'Range loop
      --        Nota_Examen := Nota(Get_Integer("Cual ha sido la nota del examen " & I'Image));
      --        Notas_Examenes(I) := Integer(Nota_Examen);
      --        end loop;
      --     Put("Las notas de los examenes son ");
      --     for N of Notas_Examenes loop
      --        Put(N'Image);
      --        Put(",");
      --     end loop;
      --  end;

      declare
         type Nota is new Integer range 0..1000;
         --type Examenes is Array (1..Get_Integer("¿Cuantos examene has tenido?")) of Nota;
         type Notas is array (Positive range <>) of Nota with Default_Component_Value => 10;
         --Lista_Examenes : Examenes;
         type Lista_Examenes is array(Positive range <>) of Nota with Default_Component_Value => 10;
         type Calificacion is (Insuficiente, Suspenso, Aprobado, Bueno, Muy_bueno, Excelente);

         Nota_Max : Nota;
         Media : Float;


         Nota_To_Clasificacion : constant array (Nota) of Calificacion :=
           (1 => Insuficiente,
            2..5  => Suspenso,
            6|7 => Aprobado,
            8 => Bueno,
            9 => Muy_Bueno,
            others => Excelente);

         function To_String(Item : Calificacion) return String is
            Result : String := Item'Image;
         begin
            --  for I in Result'Range loop
            --     if I>1 then
            --        Result(I) := To_Lower(Result(I));
            --     end if;
            --  end loop;
            return Result(1..1) & To_Lower((Result(2..Item'Image'Length)));
         end To_String;

         procedure Cargar_Notas(Lista : out Lista_Examenes) is
         begin
            for C in Lista'Range loop
               Lista(C) := Nota(Get_Integer("Que nota sacaste en el examen"));
            end loop;
         end;

         procedure Mostrar_Notas(Lista : in Lista_Examenes)  is
         begin
            Put_Line("Has sacado las siguientes notas:");

            for Nota of Lista loop
               Put_Line("Has sacado un " & Nota'Image& " " & To_String(Nota_To_Clasificacion(Nota)));
         end loop;
         end;

         function Nota_Mas_Alta (List : in Lista_Examenes) return Nota is
            Max : Nota:=1;
         begin
            for Examen of List loop
               if (max<Examen) then
                  Max:=Examen;
               end if;
            end loop;
            return Max;
         end Nota_Mas_Alta;

         function Nota_Media (List : in Lista_Examenes) return Float is
            Total : Nota := 0;
         begin
            for Examen of List loop
               Total := Total + Examen;
            end loop;
            --Put_Line(Total'Image);
            return Float(Total)/Float(List'Length);
         end Nota_Media;


         function Replace_Character (Input: in String;
                                     From : Character;
                                     To : Character) return String is
            Result : String := Input;
         begin
            for I in Result'Range loop
               if Result(I) = From then
                  Result(I) := To;
               end if;
            end loop;
            return Result;

         end Replace_Character;

         function Examenes_Aprobados(Examenes : Lista_Examenes;
                                     Nota_Aprobado : Nota := 5) return Lista_Examenes is
            Aprobados : Lista_Examenes(1..Examenes'Length);
            Cantidad_Aprobados : Integer := 0;
         begin
            for Examen of Examenes loop
               if Examen >= Nota_Aprobado then
                  Aprobados(Cantidad_Aprobados) := Examen;
               end if;
            end loop;
            return Aprobados(1..Cantidad_Aprobados); --Puede devolver un array vacio
         end Examenes_Aprobados;





         Examenes : Lista_Examenes(1..Get_Integer("¿Cuantos examene has tenido?"));

      begin
         Cargar_Notas(Examenes);
         Mostrar_Notas(Examenes);
         Nota_Max := Nota_Mas_Alta(Examenes);
         Media := Nota_Media(Examenes);
         Put_Line("Nota Máxima es " & Nota_Max'Image & " Nota Media es " & To_String(Media));
         Put_Line("Aprobaste" & Examenes_Aprobados(Examenes)'Length'Image & " examenes");
      end;
      -- 1: Insuficiente
      -- 2,3,4,5: Reprobado
      -- 6,7 Aprobado
      -- 8 Bueno
      -- 9 Muy bueno
      -- 10 Excelente
      -- Generamos un array que el indice sea la nota y el valor la calificacion

   end;


   null;
end Main;
