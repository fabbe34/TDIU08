with Ada.Text_IO; use Ada.Tex_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

package body Datum is
   procedure Get(K : out Datum_Type) is 
      Text : String(1..4);
      Char : Character;
   begin
      Get(Text(1..4));
      K.Y := Integer'Value(Text(1..4));
      Get(Char);
      Get(Text(1..2));
      K.Y := Integer'Value(Text(1..2));
      Get(Char);
      Get(Text(1..2));
      K.Y := Integer'Value(Text(1..2));
      Get(Char);
      
	  
      
   end Get;
   
   procedure Put(K : in Datum_Type) is
   begin
      Put(K.Y);
      Put(K.M);
      Put(K.D);
   end Put;
   
   
end Datum;
