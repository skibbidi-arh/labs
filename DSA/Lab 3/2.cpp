#include<bits/stdc++.h>
using namespace std;
int main()
{
    int i;

    int line[1000];

    int n=0;
    cin>>i;

    while(i!=-1)
    {

        line[n]=i;
        n++;
        cin>>i;

    }


int sec=0;



   int k; cin>>k;


   for(int j=0;j<line[k];j++)
   {

       for(int h=0;h<n;h++)
       {
           if(line[h]!=0)
           {
               line[h]--;
               sec++;
           }

       }


   }

   for(int f=0;f<k+1;f++)
   {
        if(line[f]!=0)
           {
               line[f]--;
               sec++;
           }

   }

  cout<<sec;


}
