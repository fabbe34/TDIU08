with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with Ada.Numerics.Discrete_Random; 
procedure Lab_1_B is
   
   Storlek : Integer ;
   procedure Figur(Bit : in String; Hopp : in Integer ) is
   begin
        
      For I in 1..Hopp loop
	 if I = Hopp then
	    Put(Bit);
	   
	 else
	    Put(" ");
   
	 
	 end if;
      end loop; 
      New_Line;
   
   end Figur;
   function Slum_B return Character is

       subtype A_Z is
	  Character range 'A'..'Z';
   
       package My_Random_Package is 
	  new Ada.Numerics.Discrete_Random(A_Z);
      
       use My_Random_Package; 
   
       G : Generator;
   begin
      Reset(G);
      return Random(G);
      
   end Slum_B;
   procedure Pyramid(Storlek_P : in Integer) is
       X: Integer;
       Y :  Integer;
      
   begin
      
      X:=Storlek;
      Y:=Storlek+10;
      New_Line;
      
      for I in 1..Storlek_P loop
	 
	 for I in 1..(Storlek_P*2+11) loop
	
	    if I >= X and I <= Y then
	       if I= X then 
		  Put("/");
	       elsif I=Y then
		  Put("\");
	       else
		  Put(Slum_B);
	       end if;
	    else
	       Put(" ");
	    end if;
	    
	 end loop;
	 New_Line;
	 X := X-1;
	 Y := Y+1;
      end loop;
   
      
   end Pyramid;
begin
   Put("Ange pyramidens storlek: ");
   Get(Storlek);
   Figur("  -_ | _-",Storlek);
	
   Figur("__ //.\\__", storlek);
	    
   Figur ("  _\\""//_ ", Storlek);
	 
   Figur("   - | -", Storlek );
   Pyramid(Storlek);

  
  
   
     
   
   
   
   
end Lab_1_B;
