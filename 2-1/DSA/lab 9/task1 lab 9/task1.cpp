#include <bits/stdc++.h>
using namespace std;


bool keyExists(const unordered_map<int, int>& umap, int key) {
    return umap.find(key) != umap.end();
}

int main()
{

    unordered_map<int,int> mp;
    int n=0;
    while(n!=-1) {
        cin>>n;
        mp.insert({n,n});
    }

    cout<<"insert subset values"<<endl;

    int i=0;
    int check=0;
    while(i!=-1) {
        cin>>i;
        if(!keyExists(mp,i)) {
            check++;

        }

    }

  if(check>0) {cout<<"No"<<endl; }
    else{cout<<"Yes"<<endl; }


    return 0;
}
