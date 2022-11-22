with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with figuras; use figuras;
with calendario; use calendario;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   -- type Distancia is new Float;
   -- type Area is new Float;

   --  type Nota is new Integer range 1..10;
   type Nota is range 1..10 with Default_Value => 5;
   type Numero_Muy_Largo is range 1.. 2**6;

   --type Angulo is new Float range 0.0..360;
   type Angulo is mod 360; -- Los tipos d datos modular solo valen para 0



   A : Float := 1.3;
   B : Distancia := 5.6;
   Base : Distancia := 10.0;
   Altura : Distancia := 15.0;
   Area_Triangulo : Area;

   Nota_Examen : Nota;
   N : Numero_Muy_Largo := 2**6;

   Giro : Angulo := 180;

   Hoy_Es : Dia_Semana;
   Mañana_Es : Dia_Semana;

   Hoy : Fecha := (15, Noviembre, 2022);
   Cumple_Mario: Fecha := (Dia => 1, Mes => Junio, Año => 1998);
begin


   --A := B --Asignacion incompatible, al revés también


   --  A := Float(B);
   --  B := Distancia(A);

   Area_Triangulo := Calcular_Area_Triangulo(Base, Altura);
   Nota_Examen := 10;


   --  Put_Line(N'Size'Image);
   --  Put_Line(Giro'Image);
   --  Giro := Giro + 185;
   --  Put_Line(Giro'Image);

   Hoy_Es := Martes;
   Put_Line(Hoy_es'Image);
   Mañana_Es := Dia_Semana'Succ(Hoy_Es);
   Put_Line(Mañana_Es'Image);

   Mostrar_Dias;
   Mostrar_Meses;

   Put_Line("Hoy es " & To_String(Hoy));
   Put_Line("Mario Cumple el " & To_String(Cumple_Mario));
   null;

   declare
      type Nota is new Integer range 1..10;
      subtype Notas_Buenas is Nota range 8..10;
      subtype Notas_Aprobadas is Nota range 4..7;
      subtype Notas_Malas is Nota range 1..3;

      Examen : Nota := 10;
      Mala_Nota : Notas_Malas;
   begin
      -- Examen : Notas_Malas := 10; -- Conversion implicita
                                  --Hace una conversion implicita como otros lenguajes
      Put_Line("Que nota te sacaste");
      Get(Integer(Examen));
      case Examen is
         when Notas_Malas => Put_Line("Sacaste una mala nota");
         when Notas_Buenas => Put_Line("Te sacaste una buena nota");
         when Notas_Aprobadas => Put_Line("Has Aprobado");
      end case;
   end;
   --declare
   --     subtype Cantidad is Positive;
   --
   --     A : Cantidad := 10;
   --     B : Positive := 40;
   --  begin
   --     B := A;
   --     Put_Line("Declaro un alias de tipo");
   --  end;
   --
   --  declare
   --     type Dias_Semana is (Lunes, Martes, Miercoles, Jueves,
   --                          Viernes, Sabado, Domingo);
   --
   --     subtype Fin_De_Semana is Dias_Semana range Sabado..Domingo;
   --
   --
   --     function "+" (Input : String) return Unbounded_string is
   --     begin
   --        return To_Unbounded_String(Input);
   --     end;
   --
   --     Dias_En_Ingles : array (Dias_Semana) of Unbounded_String := (+"Monday", +"Thuesday",+"Wednesday", +"Thursday",
   --                                                                  +"Friday", +"Saturday", +"Sunday");
   --     begin
   --     Put_Line("Ingrese un dia de la semana");
   --     for Dia in Dias_Semana loop
   --        Put_Line(Dia'Image);
   --     end loop;
   --
   --     declare
   --        Dia : Dias_Semana := Dias_Semana'Value(Get_Line);
   --     begin
   --        Put_Line(Dia'Image & "en Ingles es " & To_String(Dias_En_Ingles(Dia)));
   --     end;

      -- Unconstraint arrays o vectores sin restriccion
      declare
         type nota is range 1..10;
         type Lista_Notas is array(Positive range <>) of Nota with Default_Component_Value => 10;

         -- Notas : Lista_Notas(1..3);
         Notas : Lista_Notas := (4,5,6,2,4,5);
      begin
         for Nota of Notas loop
            Put_Line(Nota'Image);
         end loop;

      end;

end Main;
