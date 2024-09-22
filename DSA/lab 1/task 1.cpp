#include<bits/stdc++.h>
using namespace std;

class myIntSet{
        int size;
        int arr[100000];

    public:
        myIntSet(){
            size=0;
        }

        int getSize(){
            return size;
        }

        int getElem(int i){
            return arr[i];
        }


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




        void insert(int num)
        {
            if(size==0){arr[0]= num;size++;return;}



else if(size>0){
               for(int x=0;x<size;x++)
               {
                   if(arr[x]==num)break;
                   if( num<arr[x] && num>arr[x+1])
                   {


                       for(int y=size;y>x+1;y--)
                       {
                           arr[y]=arr[y-1];

                       }
                       arr[x+1]=num;
                   }

               }
               size++;
}

           // else{  arr[size-1]=num;size++;}


        }



        void insert1(int num)
        {
            arr[size]=num;
            size++;

        }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////


int find(  int key)
{
   int n=size;
    int s=0;
    int e=n-1;
    while(s<=e)
    {
       int mid=(s+e)/2;

       if(arr[mid]==key){
        return mid;
       }

       else if(arr[mid]<key){
            e=mid-1;
       }
       else{

        s=mid+1;
       }


    }
    return -1;

}


        bool erase(int num);
        bool erase(int indx1, int indx2);

};
int main()
{
myIntSet s1;
s1.insert(1);
s1.insert(4);
s1.insert(5);
s1.insert(3);

cout<<s1.getElem(0)<<endl;
cout<<s1.getElem(1)<<endl;
cout<<s1.getElem(2)<<endl;
cout<<s1.getElem(3)<<endl;
cout<<s1.find(3)<<endl;

}
