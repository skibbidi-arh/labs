#include<bits/stdc++.h>
using namespace  std;
class CircularQueue{
    public:
        CircularQueue(int num){

         capacity = num;
         arr = new T[capacity];
         q_size = 0;
         ifront = 0;
         iback = 0;

        }


        bool empty() const{

        return q_size == 0;

        }


        int size() const{

        return q_size;

        }


        T front() const{



        }
        void enqueue(T);
        T dequeue();
        void show();


    private:
        int q_size;
        int capacity;
        int ifront;
        int iback;
        T *arr;

};


int main()
{








}
