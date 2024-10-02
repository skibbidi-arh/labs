#include<bits/stdc++.h>
using namespace  std;
template <typename T>

class BinaryTree {

 public:
     class BinaryNode{
      private:
        T node_value;
        BinaryNode* parent_node;
        BinaryNode* left_child;
        BinaryNode* right_child;
     public:
        BinaryNode(T &val) : node_value(val), parent_node(nullptr), left_child(nullptr), right_child(nullptr) {}


     T Getvalue() const{
     return node_value;
     }

     BinaryNode* Getparent() const {
            return parent_node;
        }



     BinaryNode* Getleft() const{
     return left_child;
     }



      BinaryNode* Getright() const{
      return right_child;
     }


     bool isLeaf() const{
      return left_child==nullptr && right_child == nullptr;
     }


      bool isRoot() const {
            return parent_node == nullptr;
        }


     void insertLeft(T value){
     if(left_child==nullptr){
        left_child= new BinaryNode(value);
        left_child->parent_node= this;
     }
     else{cout<<"already exists"<<endl;}

     }


     void insertRight(T value){

     if(right_child==nullptr){
        right_child= new BinaryNode(value);
        right_child= new BinaryNode(value);
     }
     else{cout<<"already exists"<<endl;}

     }




};



BinaryTree() : root_node(nullptr) {}


void createRoot(T value){
 if (root_node == nullptr) {
            root_node = new BinaryNode(value);
        }
}


   BinaryNode* getRoot() const {
        return root_node;
    }


     T rootValue() const {
        if (root_node != nullptr) {
            return root_node->value();
        }
     }

     bool IsEmpty() const {
        return root_node == nullptr;
    }

 void clear(BinaryNode* node)
 {
     if(node !=nullptr){

        clear(node->Getleft());
        clear(node->Getright());
        delete node;
     }


 }


 int Size(BinaryNode* node){
 if (node==nullptr)return 0;
 else{

    return 1 + Size(node->Getleft()) + Size(node ->Getright()) ;

 }

 }


private:
BinaryNode* root_node;
};

int main()
{


BinaryTree <int> bt;
bt.createRoot(1);
 bt.getRoot() ->insertLeft(2);
 bt.getRoot() ->insertRight(3);
 cout<<bt.getRoot() ->Getleft()->Getvalue();




}
