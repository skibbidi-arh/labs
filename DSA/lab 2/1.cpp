#include <bits/stdc++.h>
using namespace std;

class SingleList {
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

    SingleList() :
         head(nullptr)
         {

         }



    bool empty() const {

        return head == nullptr;

    }

    char front() const {

        return head->value();

    }

    Node* begin() const {

        return head;
    }

    Node* end() const {

        return nullptr;
    }

    void push_front(char value) {

        head = new Node(value, head);

    }

    char pop_front() {

        char front_value = head->value();
        Node* old_head = head;
        head = head->next();
        delete old_head;
        return front_value;
    }

    void show() {
        Node* current = head;
        while (current != nullptr) {
            cout << current->value() << " ";
            current = current->next();
        }
        cout << endl;
    }


};

int main() {
    SingleList list;
    list.push_front('1');
    list.push_front('2');
    list.push_front('3');

    cout << "List contents: ";
    list.show();

    cout << "Front element: " << list.front() << endl;

    cout << "Popping front: " << list.pop_front() << endl;
    cout << "Popping front: " << list.pop_front() << endl;
    cout << "Popping front: " << list.pop_front() << endl;


    cout << "List after popping front: ";
    list.show();

    return 0;
}
