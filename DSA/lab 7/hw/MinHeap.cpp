#include <bits/stdc++.h>
using namespace std;

class MinHeap {
    int *arr;       // Array to store heap elements
    int size;       // Current number of elements in heap
    int total_size; // Maximum capacity of the heap

public:
    MinHeap(int n) {
        arr = new int[n];
        total_size = n;
        size = 0;
    }

    // Insert a new element into the MinHeap
    void insert(int val) {
        if (size == total_size) {
            cout << "MinHeap Overflow" << endl;
            return;
        }
        arr[size] = val; // Insert the new value at the end
        int index = size;
        size++;

        // Fix the MinHeap property (bubble up)
        while (index > 0 && arr[(index - 1) / 2] > arr[index]) {
            swap(arr[(index - 1) / 2], arr[index]);
            index = (index - 1) / 2;
        }

        cout << "MinHeap Inserted" << endl;
    }

    int getsize() {
        return size;
    }

    int getval(int index) {
        return arr[index];
    }

    // Print the heap elements
    void print() {
        for (int i = 0; i < size; i++) {
            cout << arr[i] << " ";
        }
        cout << endl;
    }

    // Delete the minimum element (root of MinHeap)
    void deleteMin() {
        if (size == 0) {
            cout << "MinHeap Underflow" << endl;
            return;
        }

        cout << "Deleted " << arr[0] << endl;
        arr[0] = arr[size - 1]; // Move the last element to the root
        size--;

        // Reorganize the heap to maintain the MinHeap property
        if (size > 0) {
            heapify(0);
        }
    }

    // Heapify the subtree rooted at index
    void heapify(int index) {
        int smallest = index;
        int left = 2 * index + 1;
        int right = 2 * index + 2;

        // Find the smallest among root, left child, and right child
        if (left < size && arr[left] < arr[smallest]) smallest = left;
        if (right < size && arr[right] < arr[smallest]) smallest = right;

        // If the smallest is not the root, swap and continue heapifying
        if (smallest != index) {
            swap(arr[index], arr[smallest]);
            heapify(smallest);
        }
    }
};

int main() {
    cout << "Hello World" << endl;
    MinHeap minHeap(20);

    // Insert elements into the MinHeap
    minHeap.insert(25);
    minHeap.insert(23);
    minHeap.insert(15);
    minHeap.insert(19);
    minHeap.insert(13);
    minHeap.insert(9);
    minHeap.insert(17);
    minHeap.insert(5);
    minHeap.insert(11);
    minHeap.insert(7);
    minHeap.insert(2);
    minHeap.insert(3);
    minHeap.insert(4);

    // Print the MinHeap
    minHeap.print();

    // Delete minimum elements
    minHeap.deleteMin();
    minHeap.deleteMin();
    minHeap.deleteMin();
    minHeap.deleteMin();

    // Print the MinHeap after deletions
    minHeap.print();
}
