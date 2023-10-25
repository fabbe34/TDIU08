with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_IO ; use Ada.Integer_Text_Io;

procedure Del_B is
   type My_Char is array(1..256) of Character;
   type String_Type is
     
      record
	 
	 Length : Integer:=1;
	 Char : My_Char;
      end record;
     	
   A : String_Type;
   procedure Get(B : out String_Type ) is
   begin
      for I in 1..A.Char'Length loop
      B.Char(I) := ' ' ;
      end loop;
      while (not End_Of_Line) loop
     
      Get(B.Char(B.Length));
      B.Length := B.Length +1;
	 
   end loop;
   end Get;
   procedure Put(B: out String_Type) is
   begin
      for I in 1..B.Char'Length loop
	 Put(B.Char(I));
      end loop;
	 
      Put(B.Length);
	 
   end Put;
begin
   
   Get(A);
   New_Line;
   Put(A );
  

     
   
end Del_B;
