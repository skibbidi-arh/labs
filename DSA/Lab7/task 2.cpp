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

    void decrease_key(int p, int k) {
        arr[p] -= k;
        percolateUp(p);
    }

    void increase_key(int p, int k) {
        arr[p] += k;
        percolateDown(p);
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



void heapSort(vector<int> arr) {

    BinaryHeap h;
    for (int n=0;n<arr.size();n++) {
        h.insert(arr[n]);
    }

    vector<int> sorted;
    while (!h.empty()) {
        sorted.push_back(h.top());
        h.erase();
    }
    cout << "Sorted array: ";
    for (int val : sorted) cout << val << " ";
    cout << endl;

}

int main() {


    BinaryHeap bh;
    vector<int> arr;
    arr.push_back(1);
    arr.push_back(7);
    arr.push_back(3);
    arr.push_back(2);
    arr.push_back(14);
    arr.push_back(32);
    arr.push_back(29);
    heapSort(arr);






}
