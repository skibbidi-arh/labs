#include <iostream>
#include <vector>
using namespace std;

void swap(int &x, int &y) {
    int temp = x;
    x = y;
    y = temp;
}

void Insertion(vector<int> &A) {
    int n = A.size();
    for (int i = 1; i < n; i++) {
        int j = i - 1;
        int x = A[i];
        while (j >= 0 && A[j] > x) {
            A[j + 1] = A[j];
            j--;
        }
        A[j + 1] = x;
    }
}

int main() {
    vector<int> A = {11, 13, 7, 12, 16, 9, 24, 5, 10, 3};
    
    Insertion(A);
    
    for (int num : A)
        cout << num << " ";
    cout << endl;
    
    return 0;
}
