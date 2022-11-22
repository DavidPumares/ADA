generic
   type Tipo is (<>); -- El tipo es discreto

package Generic_io is

   function Try_Convert
     (Valor_Como_String : in String;
      Valor_Convertido: out Tipo) return Boolean;
   
   function Get_Discrete     
     (Prompt:String := "Ingresa un numero";      
      Error:String := "No ha ingresado un valor adecuado, vuelva a intentarlo") return Tipo;
   
   procedure Show_Discrete;
   
   function To_String(Item : Tipo) return String;
end Generic_io;
