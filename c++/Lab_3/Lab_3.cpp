#include <iostream>
#include <vector>
using namespace std;

struct person
{
  string namn;
  string efternamn;
  string klubb;
};
void input(vector<person> & anmalning);
void output(person const &  b);
int main()
{
  vector<person> anmalning ;
  cout<<"Mata in deltagare: "<<endl;
 
  input(anmalning);
  cout <<"Deltagare är :" <<endl;
  for(int i =0; i <anmalning.size(); i++)
    {
      output(anmalning.at(i));
    }
}
void output(person const  &  b)
{
  cout <<b.namn <<" "<<b.efternamn<< " " << b.klubb <<endl;
}
void input(vector<person> & anmalning)
{
  string text;
  string efternamn;
  string klubb;
  
  while(cin >>text) 
    {
      person add;
      cin  >> efternamn>> klubb;
      add = {text,efternamn,klubb};
      anmalning.insert(begin(anmalning),add);
    }

  
}
