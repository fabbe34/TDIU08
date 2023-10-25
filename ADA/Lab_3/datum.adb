with Ada.Text_IO; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

package body Datum is
   
   procedure Get(K : out Datum_Type) is 
      Char : Character;
      
   begin
      get(K.Y);
      get(Char);
      if K.Y >9999 or K.Y < 1 then
	 raise Year_Error;
      end if;
      get(K.M);
      Get(Char);
      if K.M >12 or K.M < 1 then
	 raise Month_Error;
      end if;
      
      Get(K.D);
      if (K.D >31 and (K.M = 1 or  K.M = 3 or  K.M = 5 or  K.M = 7 or  K.M = 8 or K.M = 10)) or (K.D >30 and (K.M = 4 or  K.M = 6 or  K.M = 9 or  K.M = 11)) or (K.D >28 and K.M =2) then
	 raise Day_Error;
      end if;
   end Get;
   
   procedure Put(K : in Datum_Type) is
   begin
      
      Put(K.Y,Width=>0);
       Put(':');
      if K.M < 10 then
	 Put("0"); Put(K.M,Width=>0);
      else 
	 Put(K.M,Width=>0);
      end if;
      Put(':');
      if K.D < 10 then
	 Put("0"); Put(K.D,Width=>0);
      else 
	 Put(K.D,Width=>0);
      end if;

      
   end Put;
   function Next_Date(K: in  Datum_Type)return Datum_Type is
      K1 : Datum_Type;
   begin
      K1.D := K.D+1;
      K1.M := K.M;
      K1.Y := K.Y;
      
      if K1.M=12 and K1.D =31 then
	 K1.M:= 1;
	 K1.D := 1;
	 K1.Y := K.Y +1;

      elsif (K1.D =31 and (K1.M = 1 or  K1.M = 3 or  K1.M = 5 or  K1.M = 7 or  K1.M = 8 or K1.M = 10)) or (K1.D =30 and (K1.M = 4 or  K1.M = 6 or  K1.M = 9 or  K1.M = 11)) or (K1.D =28 and K1.M =2) then
	 K1.M := K.M+1;
	 K1.D:=1;
      end if;
      
      
      return K1;
   end Next_Date;
   function Previous_Date(K: in  Datum_Type)return Datum_Type is
      K1 : Datum_Type;
   begin
      K1.D := K.D-1;
      K1.M := K.M;
      K1.Y := K.Y;
      
      if K1.M = 1 and K1.D = 0 then
	 K1.M:= 12;
	 K1.D := 31;
	 K1.Y := K.Y -1;
      elsif K1.D = 0 then
	 K1.D:=31;
	K1.M:=K1.M-1; 
      end if;
      return K1;
   end Previous_Date;
   
   function K(K1: in Datum_Type) return Integer is
   begin
      return (K1.M+K1.D+K1.Y);
   end K;
   
   function "<"(K1,K2 : in Datum_Type) return Boolean is
     
   begin
      if K(K1) < K(K2) then
	 return  True;
      else 
	 return False;
      end if;
   end "<";
   
   function ">"(K1,K2 : in Datum_Type) return Boolean is
   begin
      if K(K1) > K(K2) Then
	return True;
      else
	 return False;
      end if;
      
  end ">";
   function "="(K1,K2 : in Datum_Type) return Boolean is
   begin
      if K(K1) = K(K2) Then
	return True;
      else
	 return False;
      end if;
   end "=";
end Datum;
