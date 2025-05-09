    #include<bits/stdc++.h>
    using namespace std;

void perm(vector<vector<int>> &res, vector<int> &arr, int idx) {
    if (idx == arr.size()) {
        res.push_back(arr);
        return;
    }
    for (int i = idx; i < arr.size(); i++) {
        swap(arr[idx], arr[i]);
        perm(res, arr, idx + 1);
        swap(arr[idx], arr[i]);
    }
}

vector<vector<int>> permuteUnique(vector<int> arr) {
    vector<vector<int>> res;
    perm(res, arr, 0);
    return res;

}


    int main() {
    vector<int> arr = { 1, 2, 3,4,5 };
    vector<vector<int>> res = permuteUnique(arr);
    for (auto x : res) {
        for (auto y : x) {
            cout << y << " ";
        }
        cout << endl;
    }
    }

