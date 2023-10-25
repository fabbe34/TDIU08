with Ada.Text_Io; use Ada.Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

procedure Lab_1b is
   Start : Integer;
   A_Okning : Float;
   A_Befolkning:Float;
   B_Okning : Float;
   B_Befolkning:Float;
begin
   Put("Ange startår:");
   Get(Start);
   Put("Ange land A:s folkmängd (I milj.): ");
   Get(A_Befolkning);
   Put("Ange land A Befolknings ökning (i %): ");
   Get(A_Okning);
   Put("Ange land B:s folkmängd (I milj.): ");
   Get(B_Befolkning);
   Put("Ange land A Befolknings ökning (i %): ");
   Get(B_Okning);
   
   
end Lab_1b;
