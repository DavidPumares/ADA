with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
--
begin
--     declare
      --  A : access Integer;
      --es lo mismo
      -- type Puntero_Entero is access Integer
      -- A : Puntero Entero;
   --  begin
   --     A := null; --Significa que el puntero ersta inicializado y no apunta a ningun lugar
   --     if A = null then
   --        Put_Line("La variable A no está inicializada y no apunta a nada");
   --     end if;
   --
   --     A := new Integer'(2);
   --     Put_Line(AA.all'Image);
   --        null;
   declare
      type Puntero_Entero is access Integer;
      AA : Puntero_Entero := new Integer'(30);
      BB : Puntero_Entero := AA;
   begin
      BB.all := 50; --Cambio de valor que tiene en el heap a traves del puntero;
        Put_Line(AA.all'Image);
   end;

end Main;
