//
// Created by Arham Apon on 20/11/2024.
//
#include <bits/stdc++.h>
using namespace std;

class MaxHeap {
    int *arr;
    int size; //total elements is heap
    int total_size;

public:
    MaxHeap(int n) {
        arr = new int[n];
        total_size = n;
        size = 0;
    }


    void insert(int val) {
        if (size == total_size) {
            cout<<"MaxHeap Overflow"<<endl;
            return;
        }
        arr[size] = val;
        int index = size;
        size++;

        while (index > 0 and arr[(index-1)/2] > arr[index])
        {
            swap(arr[(index-1)/2], arr[index]);
            index = (index-1)/2;


        }

        cout<<"MaxHeap Inserted"<<endl;


    }
    int getsize() {
        return size;
    }

    int getval(int index) {
        return arr[index];
    }
    void print() {

        for (int i=0;i<size;i++) {
            cout<<this->getval(i)<<" ";

        }
        cout<<endl;
    }


    void deleteMax() {
        if (size == 0) {
            cout<<"MaxHeap Underflow"<<endl;
        }

        cout<<" Deleted"<<endl;
        arr[0] = arr[size-1];
        size--;
        if (size == 0) {
            return;
        }
        heapify(0);


    }



    void heapify(int index) {
        int largest = index;
        int left = 2*index + 1;
        int right = 2*index + 2;
        if (left < size and arr[left] > arr[largest]) largest = left;
        if (right<size and arr[right] > arr[largest]) largest = right;
        if (largest != index) {
            swap(arr[index], arr[largest]);
            heapify(largest);

        }
        return;
    }
};




int main()
{
    cout<<"Hello World"<<endl;
    MaxHeap maxHeap(20);
    maxHeap.insert(5);
    maxHeap.insert(7);
    maxHeap.insert(9);
    maxHeap.insert(11);

    maxHeap.insert(13);
    maxHeap.insert(15);
    maxHeap.insert(17);
    maxHeap.insert(19);
    maxHeap.insert(23);
    maxHeap.insert(25);
    maxHeap.insert(2);
    maxHeap.insert(3);
    maxHeap.insert(4);
    maxHeap.print();
    maxHeap.deleteMax();
    maxHeap.deleteMax();maxHeap.deleteMax();maxHeap.deleteMax();
    maxHeap.print();




}
