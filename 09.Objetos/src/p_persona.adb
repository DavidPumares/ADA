package body p_persona is

   procedure Saludar(This : C_Persona) is
   begin
      Put_Line("Hola soy "
               & To_String(This.Nombre)
               & " " & To_String(This.Apellido));
   end Saludar;
   
   
   
   
end p_persona;
