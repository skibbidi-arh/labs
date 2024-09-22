#include<bits/stdc++.h>
using namespace std;
void removeline(int y)
{

    ifstream rd("origin.txt");
    ofstream temp("temp.txt");
    string line;
    int x=0;
    while(getline(rd,line))
    {
        x++;
        if(x!=y){temp<<line<<endl;}

    }
    rd.close();
    temp.close();
    remove("origin.txt");
    rename("temp.txt","origin.txt");
}

int main()
{

    ofstream student;
    student.open("Student.txt");
    student<<"101 a b c "<<endl;
    student<<" blah blah"<<endl;
    student<<" ok bro"<<endl;
    student<<" i miss her"<<endl;
    student.close();
    string text;
    ifstream Readstudent("Student.txt");
    while(getline(Readstudent,text))
    {

        cout<<text;


    }
    Readstudent.close();
    ofstream wrt("origin.txt");
    cout<<endl;
    cout<<"How many lines do you want to enter"<<endl;
    int n;
    string name , id, dept,blood;
    cin>>n;
    int k=1;

    while(k<=n)
    {
        cout<<"Enter name, id ,dept ,blood of "<<k<<" th student"<<endl;
        cin>>name; cin>>id; cin>>dept ; cin>>blood;
        wrt<<name<<",,";wrt<<id<<",,";wrt<<dept<<",,";
        wrt<<blood<<endl;
        k++;
    }
    wrt.close();
    removeline(2);



}
