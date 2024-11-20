#include<bits/stdc++.h>
using namespace std;


class BinaryHeap {
public:
BinaryHeap():
    currentsize(0){}

 bool empty() const {
    return currentsize == 0;
}

   int size() const {
    return currentsize;
}
    int top() const {
    return arr[0];

}

 bool insert (int val) {
    if (currentsize == 0) {
        arr.push_back(val);

        currentsize++;
        return true;
    }
    arr.push_back(val);
    currentsize++;
    percolateUp(currentsize-1);
    return true;

}

    bool erase() {
    if (currentsize == 0) return false;
    swap(arr[0], arr[currentsize - 1]);
    arr.pop_back();
    currentsize--;
    percolateDown(0);
    return true;
}




void print () const {
    for (int i = 0; i < currentsize; i++) {
        cout << arr[i] << " ";
    }
}


private:
    int currentsize;
    vector<int > arr;

    void percolateUp(int index) {
        while (index>0 and arr[index]>arr[(index-1)/2]) {
            swap(arr[index], arr[(index-1)/2]);
            index = (index-1)/2;
        }
    }

    void percolateDown(int index) {
        int largest = index;
        int left = 2 * index + 1;
        int right = 2 * index + 2;

        if (left < currentsize && arr[left] > arr[largest]) largest = left;
        if (right < currentsize && arr[right] > arr[largest]) largest = right;

        if (largest != index) {
            swap(arr[index], arr[largest]);
            percolateDown(largest);
        }
    }


};

int main() {


BinaryHeap bh;
    bh.insert(20);
    bh.insert(5);
    bh.insert(7);
    bh.insert(9);
    bh.insert(11);
    bh.insert(13);
    bh.insert(15);
    bh.insert(17);
    bh.insert(19);
    bh.insert(23);
    bh.insert(25);
    bh.insert(2);
    bh.insert(3);
    bh.insert(4);
    bh.print();
    cout<<endl;
    bh.erase();
    bh.erase();
    bh.print();





}
