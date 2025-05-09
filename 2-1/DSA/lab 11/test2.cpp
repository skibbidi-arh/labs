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

   
    bool startsWith(string prefix) {
        TrieNode* current = root;
        for (char c : prefix) {
            int index = c - 'a';  
            if (current->children[index] == NULL) {
                return false;  
            }
            current = current->children[index];  
        }
        return true;  
    }




    void displayHelper(TrieNode* node, string word) {
        if (node->isTerminal) {
            cout << word << endl;
        }
        for (int i = 0; i < 26; i++) {
            if (node->children[i] != NULL) {
                displayHelper(node->children[i], word + node->children[i]->data);
            }
        }
    }

    void display() {
        displayHelper(root, "");
    }
};
