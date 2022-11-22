package body p_heroe is

   procedure Presentar (This : C_Heroe) is
   begin
      Put_Line("Soy " & To_String(This.Nombre) &
                 " tengo " & This.Fuerza'Image & " puntos de fuerza" &
                 " y " & This.HP'Image & " puntos de vida. ");
      
   end Presentar;

end p_heroe;
