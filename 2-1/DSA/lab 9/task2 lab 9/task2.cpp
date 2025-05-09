#include <bits/stdc++.h>
using namespace std;

int main() {
    string s;
    getline(cin, s);
    unordered_map<string, int> wordCount;

    vector<string>words;
    stringstream ss(s);
    string word;

    while(ss>>word) {

        while(!word.empty() && ispunct(word.back())) {
            word.pop_back();
        }
        transform(word.begin(), word.end(), word.begin(), ::tolower);

        wordCount[word]++;
    }
    cout << "Stored words:\n";
    for (const auto &w : words) {
        std::cout << w << "\n";
    }

    for(auto w : wordCount) {
        if (w.second > 1) {
            cout << w.first << " : " << w.second << "\n";
        }
    }
}