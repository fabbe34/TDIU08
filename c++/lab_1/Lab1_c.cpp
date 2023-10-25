#include <iostream>
using namespace std; 


int main()
{
  int siffer {0};
  int vita{0};
  string text;
  string tal = "0123456789";
  getline(cin , text);
  for(int i = 0 ; i < text.length(); i ++)
    {
      if (text[i] == ' ')
	{
	  vita++;
	}
      for (int f = 0 ; f <10;f++)
	{

	  

	  if (text[i] == tal[f])
	    {
	      siffer++;
	    }
	}
    }
  cout << "Indata innehöll: " << text;
  cout << "siffertecken: " <<  siffer<<endl;
  cout << "Vita tecken: "<<(vita)<<endl;
  cout << "Alfabetiska tecken "<<(text.length()-(vita)-siffer)<< endl;
  cout << "Tecken totalt: " << text.length()<< endl;
}
