#include <iostream>
#include <cctype>
using namespace std;

int main()
{
  int count=0;
  int f;
  string ord;
  string max;
  string min;
  cout << "Mata in texten : ";
    
  
  while(cin>>ord)
    { 
      f++;
      count +=  ord.length();
      if (ord.length() >max.length())
	{
	  max = ord;
	}
      if (ord.length() < min.length() or min.length() == 0)
	{
	  min = ord;
	}
	
    }
  

  cout <<"texten innehöll: ";
  cout << count+f<<endl;
  cout<< "Största ord: "<<max<<" " <<max.length()<<endl;
  cout<< "minsta ord: "<<min<< " "<<min.length()<<endl;
  cout<< "medelvärde: "<<count/f<<" "<<endl;

  
  return 0;
}
  
