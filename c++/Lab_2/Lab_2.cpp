#include <iostream>
using namespace std;

int N (int  hej);
void swap (int &  a, int  & b);
void test( int const a =5);
int main()
{
  int summa{N(5)};
  cout << summa << endl ;
  cout <<(5+5)<< endl;
  cout <<5.5+10<<endl;
  int a {5};
  int b {10};
  swap(a,b);
  cout << a << b<< endl;
  test();
  return 0;
}
void test(int const a )
{
  cout<<a<<endl;
}
void swap( int & a, int & b)
{
  int c {a};
  a = b;
  b= c ;
}
int N (int  N_fak)
{
  int summa{1};
  for(int i =1; i <(N_fak+1); i++)
    {
      summa *= i;
    }
  return summa;
}
