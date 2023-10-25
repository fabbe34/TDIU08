with Ada.Text_IO; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Datum ; use Datum;
procedure Lab_4 is
   K,K2 : Datum_Type;
begin
   
   loop
      begin
	 Put("Skriv in två datum ");
	 Get(K);
	 Get(K2);
	 exit;
      exception 
	 when Month_Error => 
	    Put("Månad ska inmatas mellan 1-12 ");
	    Skip_Line;
	    New_Line;
	 when Year_Error =>
	    Put("År ska vara mellan 1-9999 ");
	    Skip_Line;
	    New_Line;
	 when Day_Error =>
	    Put("pucko tänk på hur många dagar de är i en månad ");
	    Skip_Line;
	    New_Line;    
      end ;
   end loop;
   Put("Datumet är: ");
   Put(K);
   New_Line;
   Put( Next_Date(K));
   New_Line;
   Put(Previous_Date(K));
   New_Line;
   
   
   if K2 < K then
      Put("sant");
   else 
      Put("False");
   end if;
   New_Line;
   if K2 > K then
      Put("sant");
   else
      Put("False");
   end if;
   
   New_Line;
   if K2 = K then
      Put("sant");
   else
      Put("False");
   end if;

  
end Lab_4; 
