with Ada.Text_IO; use Ada.Text_Io;
with Ada.Integer_Text_IO; use Ada.Integer_Text_Io; 
with Ada.Float_Text_Io; use Ada.Float_Text_Io;
procedure In_Och_utmatningar is
   Tal : Integer ;
   Tal_F : Float;

   Tecken: Character;
   
   S_Fem : String(1..6);
begin
   --Första uppgift
   Put("Skriv in ett heltal: ");
   Get(Tal);
   Put("Du skrev in talet: ");
   Put(Tal,Width =>0);
   
   --Går ner en rad Och tömmer "sparade nummer"
   Skip_Line;
   New_Line;
   
  -- Andra Uppgift
   Put("Skriv in ett flyttal: ");
   Get(Tal_F);
   Put("Du skrev in flyttalet: ");
   Put(Tal_F,Exp =>0,Fore=>3, Aft=>3 );
   
   ----------
   Skip_Line;
   New_Line;
   
   --- Tredje uppgift
   Put("Skriv in ett heltalt och flyttande tal: ");
   Get(Tal);
   Get(Tal_F);
   Put("Du skrev in heltalet: ");
   Put(Tal, Width=>0);
   
   New_Line;
   Put("Du skrev in flyttalet:");
   Put(Tal_F,Exp=>0, Fore=>4,Aft=>4);
   
   -------------------
   Skip_Line;
   New_Line;
   
   ---Fjärde uppgift
   Put("Skriv in ett tecken: ");
   Get(Tecken);
   Put("Du skrev in tecknet: ");
   Put(Tecken);
   
   --------
   New_Line;
   Skip_Line;
   
   ---Femte Uppgift
   Put("Skriv in en string med 5 tecken: ");
   Get(S_Fem(1..5));
   Put("Du skrev in strängen: ");
   Put(S_Fem);
   
   -------
   New_Line;
   Skip_Line;
   ----Sjätte uppgift 
   Put("skriv in en sträng med 3 tecken: ");
   Get(S_Fem(1..3));
   Put("Du krev in strängen: ");
   Put(S_Fem(1..3));
   
   -----
   New_Line;
   Skip_Line;
   ---Uppgift 8 
   Put("Skriv in ett heltal och en sträng med 5 tecken: ");
   Get(Tal);
   
   Get(S_Fem(2..6));
   
   Put("Du skrev in talet ("); 
   Put(Tal,Width=>0);
   Put(") och strängen (");
   Put(S_Fem);
   Put(")");
   
   --------------------
   New_Line;
   Skip_Line;
   
   ---Uppgift 9
   Put("Skriv in en sträng med 3 tecken och ett flyttal: ");
   Get(S_Fem(1..3));
   Get(Tal_F);
   Put("Du skrev in stringen: ");
   Put(S_Fem(1..3));
   New_Line;
   Put("Du skrev in flyttalet: ");
   Put(Tal_F , Exp=>0, Fore=>4, Aft=>4);
   
     
end In_Och_utmatningar;
