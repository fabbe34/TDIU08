with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_Io;

procedure Lab_3 is
   type My_Integer          is array(1..10) of Integer;
   
 
   procedure Input(T1 : out My_Integer)is
   begin 
      for I in 1..10 loop
	 Put("Mata in tal: ");
	 Get(T1(I));
      end loop;
      
   end Input;
   
   procedure put(T1 : in My_Integer) is
   begin
      for I in 1..T1'Length loop
	 Put(T1(I), Width => 3);
       end loop;
      
   end put;
   procedure Find_Maximum(T1 : in My_Integer; M,Index :  out Integer)  is
   begin
      M:=0;
 
      for I in 1..T1'Length loop
	 if M< T1(I) then
	    M := T1(I);
	    Index :=I;
	   
	 end if;
      end loop;
   end Find_Maximum;

   procedure My_Reverse(T1 : in out My_Integer ) is
      H : Integer;
      F: Integer:=10;
   begin

      for I in  1..(T1'Length/2) loop
	       H := T1(I);
	       T1(I) := T1(F);
	       T1(F) := H;
	       F := F-1;
      end loop;
      
   end MY_Reverse;
     T : My_Integer;
   Index : Integer;
   Max : Integer;
begin
   Input(T);
   Put(T);
   New_Line;
   MY_Reverse(T);
   for I in 1..10 loop
      Put(T(I), Width =>3);
   end loop;
   New_Line;
   Find_Maximum(T,Max, Index);
   Put("Max Värde: ");Put(Max, Width=>2);
   New_Line;
   Put("Index: ");Put(Index,Width =>2 );
   New_Line;
   
     
   
end Lab_3;
