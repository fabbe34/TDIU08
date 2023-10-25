with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Sorted_List; use Sorted_List;
procedure Lab_4 is
   L: List_Type;
   B : Boolean;
   Find_S: Integer;
begin
   Insert(L,510);
   Insert(L,5);
   Insert(L,10);
   Insert(L,95);
   Remove(L, 5);
   Put("Listan är tom eller ej: ");   
   B := Empty(L);
   if B then
      Put("true ");
   else 
      Put("False");
   end if;
   New_Line;
   Put("I listan finns: ");
   Put(L);
   New_Line;
   Put("Finns 510 i listan? : ");
   if Member(L,510) then
      Put("true ");
   else 
      Put("False");
   end if;
   New_Line;
   Put("Finns 10 i listan");
   Put(Find(L,10));
   New_Line;
   Put("Finns 95 i listand(Procededure)?");
   Find(L,95,Find_S);
   Put(Find_S);
   Put(Length(L));
exception 
   when Data_Error_Null =>
      Put("Finns ej i listan  ");
end Lab_4;
