with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io;use Ada.Integer_Text_Io;
procedure Lab_1_E is
   Varde : Integer;
  
begin
   Put("Skriv in sista nummret: ");
   Get(Varde);
   while (Varde >0 ) loop
      put(Varde mod 10);
      Varde := Varde/10;
   end loop;
   
   
end Lab_1_E;



