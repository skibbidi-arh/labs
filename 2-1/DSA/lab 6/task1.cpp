#include<bits/stdc++.h>
using namespace std;
class avltree{
class Node{
public:

Node(int value){
this-> value = value;
left=right=nullptr;
height=0;}

int getvalue()
{
    return value;

}

int getheight(){
if(this == nullptr)return -1;
else{ return this-> height;}
}

Node* getparent()
{
    return parent;

}

Node* getleft()
{
    return left;

}
Node* getright()
{
    return right;

}

bool empty()
{

    return this == nullptr;
}

bool isLeaf()  {
     return left == nullptr && right == nullptr;
      }

bool isRoot()
{

    return parent==nullptr;
}

int front()
{

    Node* current = this;
    while(current->left!=nullptr){
        current =current->getleft();
    }
    return current->getvalue();
}

int back()
{

    Node* current = this;
    while(current->right!=nullptr){
        current =current->getright();
    }
    return current->getvalue();
}


bool find(int x,Node* &node) {
            if (x < value) {
                if (left != nullptr) return left->find(x, node);
            } else if (x > value) {
                if (right != nullptr) return right->find(x, node);
            } else {
                node = this;
                return true;
            }
            return false;
        }

 void updateHeight()
 {
     height = 1 + max(left->height,right->height);
 }

 int getBalance()
 {
     int x=0,y=0;
     if(left->value)x=left->value;
     if(right->value)y=right->value;
     return x-y;

 }



int getBalance(Node* node){
if(node == nullptr)return 0;

return left->getheight() - right->getheight();

}

void rotateRight()
{
    Node* newroot = left;
    left = newroot->right;
    if(newroot->right!=nullptr)
    {
        newroot->right->parent=this;
    }
    newroot->right=this;
    newroot->parent=parent;
     if (parent != nullptr) {
                if (parent->left == this) {
                    parent->left = newroot;
                } else {
                    parent->right = newroot;
                }
            }

}


void rotateLeft()
{
    Node* newroot = right;
    right = newroot->left;
    if(newroot->left!=nullptr)
    {
        newroot->left->parent=this;
    }
    newroot->left=this;
    newroot->parent=parent;
     if (parent != nullptr) {
                if (parent->right == this) {
                    parent->right = newroot;
                } else {
                    parent->left = newroot;
                }
            }

}

void balance(Node* &root){

int factor=getBalance();
if(factor>1){
    if(left!=nullptr && left->getBalance()>0){
        left->rotateLeft();
    }
    rotateRight();
}

else if(factor<-1){
    if(right!=nullptr && right->getBalance()>0){
        right->rotateLeft();
    }
    rotateLeft();
}

}

bool insert(int val,Node* &root)
{
   if(val<value){
    if(left==nullptr){
        left = new Node(value);
        left->parent = this;
    }
    else{
        left->insert(val,root);
    }
   }

   else if(val>value){
    if(right==nullptr)
    {
        right = new Node(value);
        right->parent = this;

    }
    else{
        right->insert(value,root);
    }

   }

    else{
       return false;
    }
}







private:
int value;
Node* left;
Node* right;
Node* parent;
int height;

};


};





int main()
{


}
