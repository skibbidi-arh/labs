#include <bits/stdc++.h>
using namespace std;

class TrieNode {
public:
    char data;
    TrieNode* children[26];
    bool isTerminal;

    TrieNode(char ch) {
        data = ch;
        for (int i = 0; i < 26; i++) {
            children[i] = NULL;
        }
        isTerminal = false;
    }
};

class Trie {
public:
    TrieNode* root;

    Trie() {
        root = new TrieNode('\0');
    }


    void insert(string word) {
        TrieNode* current = root;
        for (char c : word) {
            int index = c - 'a';
            if (current->children[index] == NULL) {
                current->children[index] = new TrieNode(c);
            }
            current = current->children[index];
        }
        current->isTerminal = true;
    }


    bool search(string word) {
        TrieNode* current = root;
        for (char c : word) {
            int index = c - 'a';
            if (current->children[index] == NULL) {
                return false;
            }
            current = current->children[index];
        }
        return current->isTerminal;
    }



    void suggestions(string prefix) {
        TrieNode* current = root;
        for (char c : prefix) {
            int index = c - 'a';
            current = current->children[index];
        }
        displayfun(current,"",prefix);
    }



    void displayfun(TrieNode* node, string word,string prefix) {
        if (node->isTerminal) {
            cout << prefix+word << endl;
        }
        for (int i = 0; i < 26; i++) {
            if (node->children[i] != NULL) {
                displayfun(node->children[i], word + node->children[i]->data,prefix);
            }
        }
    }





};
int main() {
    Trie trie = Trie();
    int n1;
    cin >> n1;
string inp;

    for(int i = 0; i < n1; i++) {
        cin>>inp;
        trie.insert(inp);

    }

    string ch;
    cin>>ch;
    string word=(string)ch;
    while(ch!="\0") {
        trie.suggestions(word);
        cin>>ch;
        word= word+ch;


    }


}
