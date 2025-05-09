    #include<bits/stdc++.h>
    using namespace std;



int main() {
    int n;
    cin >> n;

    vector<int> coeffs(n + 1);
    for (int i = 0; i <= n; ++i) {
        cin >> coeffs[i];
    }

    int x;
    cin >> x;

    int derivative = 0;

    for (int i = 0; i < n; ++i) {
        int power = n - i;
        derivative += power * coeffs[i] * pow(x, power - 1);
    }

    cout << derivative << endl;

    return 0;
}
