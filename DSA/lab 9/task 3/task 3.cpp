
#include <bits/stdc++.h>
using namespace std;

int main() {
    unordered_map<string, string> dictionary;
    string line, english_word, foreign_word;

    for(int i=0; ; i++) {
        cin>>english_word>>foreign_word;
        if(english_word=="\n" && foreign_word=="\0") {
            break;
        }
        else {
            dictionary[foreign_word]=english_word;
        }
    }
        vector<string> s;




    return 0;
}
