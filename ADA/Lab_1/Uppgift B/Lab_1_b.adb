with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; Use Ada.Integer_Text_Io;
with Ada.Float_Text_Io; Use Ada.Float_Text_Io;

procedure Lab_1_B is
   Test : FLoat; 
   Test2 : Float;
   Test3 : Integer;
   Function "+" (X :Float; I : Integer) return Float is
   begin
      return X + Float(I);
      
   end "+";
   Function "+" (X :Integer; I : Float) return Float is
   begin
      return Float(X)+I;
      
   end "+";
   
   function N (X : Integer) return Integer is
      Svar : Integer:=1;
   begin
      for I in 1..X loop
	 Svar := Svar *I       ;
      end loop;
      
      return Svar;
   end N;
begin
   Test  := 1.00 + 1;
   
   Test2 := 1+2.00;
   Put(Test, Exp =>0, Aft=>3, Fore=>3);
   Put(Test2, Exp =>0, Aft=>3, Fore=>3);
   New_Line;
   Test3 := N(10);
   Put(Test3, Width=>3);
   
end Lab_1_B;
