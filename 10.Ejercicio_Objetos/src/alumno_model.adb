package body Alumno_Model is

   function Create (Nombre : String; Notas : Nota) return Alumno is
   begin
      return new C_Alumno'(Nombre => To_Unbounded_String(Nombre),
                            Notas => Notas);
   end Create;
   
   function Get_Nombre(This: C_Alumno) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;
   
   function Get_Nota( This : C_Alumno) return Nota is
   begin
      return This.Notas;
   end Get_Nota;
   

   
end Alumno_Model;
