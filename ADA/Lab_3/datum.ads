with Ada.Text_IO; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
package Datum is
   type Datum_Type is private;
   
   Month_Error,Year_Error, Day_Error : exception;
   
   procedure Get(K : Out Datum_Type);
   procedure Put(K : in  Datum_Type);
   function Next_Date(K:  in Datum_Type) return Datum_Type;
   function Previous_Date(K:  in Datum_Type) return Datum_Type;
   function "<"(K1,K2: in Datum_Type) return Boolean;
   function ">"(K1,K2: in Datum_Type) return Boolean;
   function "="(K1,K2: in Datum_Type) return Boolean;
private 
   type Datum_Type is
      record
	 Y: Integer;
	 M,D : Integer;
   end record;
end Datum;
