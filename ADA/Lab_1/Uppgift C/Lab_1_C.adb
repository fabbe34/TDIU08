with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

with Ada.Float_Text_Io; use Ada.Float_Text_Io;

procedure Lab_1_C is
   S1 : Float;
   T1 : Float;
   S2 : Float;
   T2 : Float ;
   K : Float;
   T0 : Float;
   S3 : Float;
   function K_U (T, S : Float) return Float is
   begin
      return (T/S);
     
   end K_U;
   
   function T0_U (Stracka1, Tanka1, Stracka2, Tanka2 : Float) return Float is
      
   begin
      return  (Tanka1 - (Stracka1*(Tanka2/Stracka2)));
	 
   end T0_U;
   
   function S3_U (T, X:Float) return Float is
   begin
      return (X/T );
   end S3_U;
begin
   Put("Först kör vi sträckan S1 (i mil): ");
   Get(S1);
   
   Put("vi tankar nu full tank, T1 (i liter): ");
   Get(T1);
   
   Put("nu kör vi sträckan S2 (i mil): ");
   Get(S2);
   
   Put("vi tankar nu full tank igen, T2 (i liter): ");
   Get(T2);
   
   New_Line;
   K := K_U(T2,S2);
   T0 := T0_U(S1,T1,S2,T2);
   S3 := S3_U(K,T0);
   
   
   Put("Bilen drar ");
   Put(K, Exp=>0,Aft=>2,Fore=>0);
   Put(" Liter / Mil"); 
   New_Line;
   
   Put("Ur tanken saknades de från början ");
   Put(T0 , Exp =>0, Fore=>0, Aft=>2); 
   Put(" Liter");
   
   New_Line;
   Put("Vi kör sedan exakt ");
   Put(S3 , Exp=>0, Fore=>0, Aft =>2);
   Put(" Och lämnar bilen där");
  
   
end Lab_1_C;
