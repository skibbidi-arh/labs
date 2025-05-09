#include <bits/stdc++.h>
using namespace std;

int main()
{
    vector<int> v1;
    vector<int> v2;

    int n1;
    cout<<"Enter 1st numbers: "<<endl;
    cin>>n1;
    while(n1!=-1) {
        v1.push_back(n1);
        cin>>n1;

    }

    cout<<"Enter 2nd numbers: "<<endl;
    int n2;
    cin>>n2;

    while(n2!=-1) {
        v2.push_back(n2);
        cin>>n2;

    }


    int it=v1.size();
    int j=0;
    int count=0;

    for(int i=0;i<it;i++) {

        if(v1[i]==v2[j]) {
            count++;
            j++;
        }
    }

    if(count==v2.size()) {
        cout<<"YES"<<endl;
    }
    else {cout<<"NO"<<endl;}




    }





