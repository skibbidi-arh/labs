#include <bits/stdc++.h>
using namespace std;

class Stack {
public:
    class Node {

        private:
        char node_value;
        Node* next_node;


        public:
        Node(char value = '0', Node* next = nullptr)
            : node_value(value), next_node(next) {}

        char value() const {
            return node_value;
        }

        Node* next() const {
            return next_node;
        }


    };

    public:
    Node* head;

    Stack() :
         head()
         {

         }



    bool isempty() const {

        return head == nullptr;

    }

    char front() const {

        return head->value();

    }

    Node* begin() const {

        return head;
    }



    void push_top(char value) {

        head = new Node(value, head);

    }

    char pop_top() {

        char front_value = head->value();
        Node* old_head = head;
        head = head->next();
        delete old_head;
        return front_value;
    }



};

int main() {
    Stack stc;
    stc.push_top('1');
    cout<<stc.begin();
    cout<<stc.isempty();



    return 0;
}
