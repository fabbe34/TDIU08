
package Sorted_List is
   type List_Type is private;
   Data_Error_Null : exception;
   function Empty(L : in List_Type) return Boolean;
   procedure Insert(L:in out List_Type; H : in Integer );
   procedure Put(L: in List_Type );
   function Member(L: in List_Type;H : in Integer ) return Boolean; 
   procedure Remove(L: in out List_Type; H :in Integer);
   procedure Delete(L:in out List_Type);
   function Find(L: in List_Type ; Nyckel : in Integer) return Integer;
   procedure Find(L: in List_Type ; Nyckel : in Integer; Tal: out Integer);
   function Length(L: in List_Type) return Integer;
private
   type E_Type;
   type List_Type is access E_Type;
   type E_Type is
      record
	 Data: Integer;
	 Next: List_Type;
      end record;
   
end Sorted_List;
