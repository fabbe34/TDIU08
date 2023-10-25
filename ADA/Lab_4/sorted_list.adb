with Ada.Text_Io; use Ada.Text_Io;
with Ada.Integer_Text_Io; use Ada.Integer_Text_Io;
with Ada.Unchecked_Deallocation;
package body Sorted_List is
   function Empty(L: in List_Type ) return Boolean is
   begin
      if L = null then
	 return True;
      else 
	 return False;
      end if;
   end Empty;
   procedure Insert(L:in out List_Type; H: in Integer) is
   begin
      L := new E_Type'(Data => H, Next =>L);
  
   end Insert;
   procedure Put(L: in List_Type) is
      
   begin
      if L /= null then
	 Put(L.Data, Width =>0);
	 Put(" ");
	 Put(L.Next);
      end if;
      

      
	
   end Put;
   function Member(L: in List_Type; H : in Integer) return Boolean is
      
   begin
      if L /= Null then
	 
	  if L.Data = H then 
	     return True;
	  elsif Member(L.Next,H) then
	     return True;
	  end if;
	  
      end if;
          
       return False;
   end Member;
   procedure Free is
      new Ada.Unchecked_Deallocation(E_Type , List_Type);
   procedure Remove(L : in out List_Type; H: in Integer) is
    E : List_Type;
   begin
      if L /= null then
	 if L.Data = H then
	    E := L;
	    L := L.Next;
	 elsif L.Next.Data =H then
	    E :=L.Next;
	    L.Next := L.Next.Next;
	    
	 else
	    Remove(L.Next,H);
	 end if;
      else 
	 raise Data_Error_Null;
       end if;
   Free(E);
   end Remove;
   procedure Delete(L: in out List_Type) is
   begin
      if Empty(L) then 
	 
	 return;
      else
	 Delete(L.Next);
	 Free(L);
	 
      end if;
   end Delete;
   
   function Find(L: in List_Type ; Nyckel :in Integer) return Integer is
   begin
      if L /= null then
	 if L.Data = Nyckel then
	   return Nyckel;
	 else 
	    return Find(L.Next,Nyckel);
	 end if;
      else
	 raise Data_Error_Null;
       end if;
   end Find;
   
   procedure Find( L: in List_Type; Nyckel: in Integer; Tal: out Integer) is
   begin
      Tal := Find(L,Nyckel);
      
   end Find;
   
   function Length(L: in List_Type)return Integer is
      
   begin
      if Empty(L) then
	 return 0;
      else 
	 return 1+ Length(L.Next);
      end if;

   end Length;
end Sorted_List;
