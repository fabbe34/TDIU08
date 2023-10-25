with Ada.Text_IO; use Ada.Tex_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
package Datum is
   type Datum_Type is private;
   procedure Get(K: out Datum_Type);
   procedure Put(K: in Datum_Type);
   
private 
   type Datum_Type is
      record
	 Y,M,D : Integer;
   end record;
end Datum;
