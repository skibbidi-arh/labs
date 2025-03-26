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

    // Insert a word into the Trie
    void insert(string word) {
        TrieNode* current = root;
        for (char c : word) {
            int index = c - 'a';  // Convert character to index (0 for 'a', 1 for 'b', ..., 25 for 'z')
            if (current->children[index] == NULL) {
                current->children[index] = new TrieNode(c);
            }
            current = current->children[index];  // Move to the next character
        }
        current->isTerminal = true;  // Mark the end of the word
    }

    // Search for a word in the Trie
    bool search(string word) {
        TrieNode* current = root;
        for (char c : word) {
            int index = c - 'a';  // Convert character to index
            if (current->children[index] == NULL) {
                return false;  // Word not found
            }
            current = current->children[index];  // Move to the next character
        }
        return current->isTerminal;  // If we reach a terminal node, the word exists
    }

    // Check if any word in the Trie starts with the given prefix
    bool startsWith(string prefix) {
        TrieNode* current = root;
        for (char c : prefix) {
            int index = c - 'a';  // Convert character to index
            if (current->children[index] == NULL) {
                return false;  // Prefix not found
            }
            current = current->children[index];  // Move to the next character
        }
        return true;  // If we can traverse the whole prefix, return true
    }
};
