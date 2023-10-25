with Ada.Text_Io; use Ada.Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;

procedure Lab_1 is
   F_Pris : Float:=0.00;
   S_Pris : Float:= 0.00;
   Steg : Float:=0.00;
   Moms : Float:=0.00;
   
   procedure Get_Safe(A : out Float;B,C : in Float; F_String,A_String : in String) is 
   begin
      Put(F_String);
      Get(A);
      loop 
	 if A < B then
	    Put(A_String );
	    Get(A);
	 elsif A  > B A < C then
	    exit;
	 end if;
      end loop;
      
      
   end Get_Safe; 
   
   
   -----------------------------------
   
   procedure Tabell(Pris1,Pris2,Steg1,Moms1 : in out Float)  is   
   begin
       New_Line;
       Put("Momstabell ");
       New_Line; 
       Put("pris utan mom Moms Pris med moms");
       New_Line;
       while Pris1  <= Pris2  loop
	  Put(Pris1 , Exp=>0, Aft=>2, Fore=>6);
      
      
	  Put(((Pris1 )*(Moms1/100.00)), Exp=>0, Aft=>2, Fore=>6);
      
	  Put(((Pris1   )*(Moms1/100.00)) + Pris1 , Exp=>0, Aft=>2, Fore=>6);
	  Pris1  := Pris1  + Steg1; 
	  New_Line;
      
      
       end loop;
       
   end Tabell;


begin
   
   Get_Safe(F_Pris, 0.00,10000.00,"Första pris: ","Du skrev ett nummer som är mindre en 0 testa igen:  " );
   
    Get_Safe(S_Pris, F_Pris,,15000.00,"Sista priset: ","Du skrev ett nummer som är mindre en Första priset:  ");
   
   Get_Safe(Steg,0.00,10000.00, "Steg: ","Du skrev ett nummer som är mindre en 0:  ");
 
   Get_Safe(Moms, 0.00,100.00 ,"Momsprocent: ", "Du skrev ett nummer som är mindre än 0 eller högre än 100:  ");
   
   Tabell(F_Pris,S_Pris,Steg,Moms);
  
end Lab_1;
