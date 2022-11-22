with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings; use Ada.Strings;

package body io is

   function Get_Non_Empty_Line(Prompt : String := "Ingrese un texto no vacío";
                               Error : String := "Texto vacio. Uno no vacio pls") return String is
   begin
      Put_Line(Prompt);
      loop
         declare
            Nombre: String := Get_Line;
         begin
            if(Nombre'Length>0) then
               return Nombre;
            end if;
            Put_Line(Error);
         end;
      end loop;
   end Get_Non_Empty_Line;
   
   
   
   function Try_Convert_Integer(Texto:in String;
                                Texto_Como_Entero:out Integer) return Boolean is
   begin
      Texto_Como_Entero := Integer'Value(Texto);
      return True;
   exception
      --when Constraint_Error => return False;
      when others => return False;
   end;
   
   
   
   --Va a preguntar un valor hasta que el usuario ingrese un entero
   --Usar la funcion anterior Try_Convert_Integer
   function Get_Integer(Prompt:String := "Ingresa un numero";
                        Error:String := "No ha ingresado un numero, vuelva a intentarlo") return Integer is
      Result : Integer := 0;
   begin
      Put_Line(Prompt);
      while (not(Try_Convert_Integer(Get_Line, Result))) loop
         Put_Line(Error);
      end loop;
      return Result;
   end Get_Integer;
   
   
   
   function Get_Integer_Between(Min : Integer;
                                Max : Integer;
                                Prompt : String := "Ingresa numero";
                                Empty_Error: String := "Texto vacio";
                                UnderFlow_error : string := "Numero pequeño";
                                OverFlow_Error : String := "Numero grande") return Integer is
   Numero : Integer;
   begin
      --Put_Line(Prompt);
      Numero := Get_Integer("Ingrese un numero");
      while(Numero < Min and Numero > Max) loop
         if(Numero<Min) then
            Put_Line(UnderFlow_error);
         else
            Put_Line(OverFlow_error);
         end if;
      end loop;
      return Numero;
   end Get_Integer_Between;
   
   procedure Reemplazar (Texto :in out String;
                         Caracter_A_Reemplazar : in Character;
                         Caracter_B_Reemplazo : in Character) is
     
   begin
      for i in Texto'Range loop
         if Texto(i) = Caracter_A_Reemplazar then
            Texto(i) := Caracter_B_Reemplazo;
              
         end if;
      end loop;
   end Reemplazar;

function Try_Convert_Float(Texto: String; Texto_Como_Float: out Float) return Boolean is
   begin
      Texto_Como_Float := Float'Value(Texto);
      return True;
      
   exception
         when others => return False;
   end;
   
   function Get_Float
     (Prompt : String := "Ingrese un texto de tipo Float.";
      Error : String := "Ingrese un texto numerico.";
      Separador_Decimales: Character := ',') return Float is
      
      Texto: String := Get_Line;
   begin
      Put_Line (Prompt);
      loop
         declare
            Num : Float := 0.0;
         begin
            Reemplazar(Texto,',','.');
            if (Try_Convert_Float (Texto, Num)) then
               return Num;
            end if;
            Put_Line (Error);
         end;
      end loop;
   end Get_Float;
      
   function To_String
     (Input : Float;
      Cantidad_Decimales : Integer := 2;
      Separador_Decimales : Character := ',') return String is
      
      result : String := Integer(Float'Floor(Input))'Image 
        & Separador_Decimales
        & Trim(Integer((Input - Float'Floor(Input)) * Float(10 ** Cantidad_Decimales))'Image, Both);
   
   begin
      return result;
         
   end;

   
end io;
