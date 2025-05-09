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



    void displayfun(TrieNode* node, string word) {
        if(node -> isTerminal) {
            cout << word<<endl;
        }

        for(int i = 0; i < 26; i++) {
            if(node->children[i] != NULL) {
                string ww= word+node->children[i]->data;
                displayfun(node->children[i], ww);

            }
        }


    }


    void display() {
        displayfun(root, "");
    }



};
int main() {
    Trie trie = Trie();
    int n1, n2;
    cin >> n1 >> n2;
string inp;

    for(int i = 0; i < n1; i++) {
        cin>>inp;
        trie.insert(inp);

    }
    trie.display();

    for(int i = 0; i < n2; i++) {
        string word;
        cin>>word;
        bool t = trie.search(word);
        if(t) {cout<<"T"<<endl; }
        else {cout<<"F"<<endl; }
    }


}
