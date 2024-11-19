#include<bits/stdc++.h>
using namespace std;
template <typename T>
class BinarySearchtree{

public:
    class node{

public:
    T node_value;
    node *parent_node;
    node *left_child;
    node *right_child;

    node(T &value)
         :node_value(value), parent_node(nullptr),left_child(nullptr),right_child(nullptr){}


    T value()
    {
        return node_value;
    }

    node* parent()
    {

        return parent_node;
    }

     node* left()
    {

        return left_child;
    }
     node* right()
    {

        return right_child;
    }
    bool empty()
    {
        return this==nullptr;

    }

    bool isleaf()
    {

        return left_child==nullptr and right_child==nullptr;
    }

     bool isRoot()
      {
         return parent_node == nullptr;
      }


      int size()
      {
          if(empty()){return NULL;}
          else{
            int left,right;
            if(left_child) left= left_child->size();
            else{left=0;}

             if(right_child) right= right_child->size();
             else{right=0;}
             return 1+left+right;
          }
      }

      int height()
      {
          if(empty()){return NULL;}
          else{
            int left,right;
            if(left_child) left= left_child->height();
            else{left=0;}

             if(right_child) right= right_child->height();
             else{right=0;}
             return 1+max(left,right);
          }


      }

      T front(){
      node* current = this;

       while (current->left_child) {
                current = current->left_child;
            }
            return current->node_value;

      }

      T back(){
       node* current = this;

       while (current->right_child) {
                current = current->right_child;
            }
            return current->node_value;


      }

       bool find(T &val, node* &found_node) {
            if (val == node_value) {
                found_node = this;
                return true;
            } else if (val < node_value && left_child) {
                return left_child->find(val, found_node);
            } else if (val > node_value && right_child) {
                return right_child->find(val, found_node);
            }
            return false;
        }

       bool insert(T val, node* &thisnode){
           if(empty())
           {
              thisnode = new node(val) ;
           }
           if(val<thisnode->value()){
            return insert(val,thisnode->left_child);
           }
           else if(val>thisnode->value()){
            return insert(val,thisnode->right_child);
           }


       }




  bool erase(T  &val, node* &ptr_to_this) {
            if (ptr_to_this == nullptr) {
                return false;
            }

            if (val < ptr_to_this->value()) {
                return erase(val, ptr_to_this->left_child);
            } else if (val > ptr_to_this->value()) {
                return erase(val, ptr_to_this->right_child);
            } else {

                if (ptr_to_this->isLeaf()) {
                    delete ptr_to_this;
                    ptr_to_this = nullptr;
                    return true;
                }


                else if (ptr_to_this->left_child && ptr_to_this->right_child) {
                    ptr_to_this->node_value = ptr_to_this->right_child->front();
                    return erase(ptr_to_this->node_value, ptr_to_this->right_child);
                }


                else {
                    node* child = (ptr_to_this->left_child != nullptr) ? ptr_to_this->left_child : ptr_to_this->right_child;
                    node* to_delete = ptr_to_this;
                    ptr_to_this = child;
                    delete to_delete;
                    return true;
                }
            }
        }

    };


public:
BinarySearchTree();

private:
    node* root_node;

public:
    node* root()
    {
        return root_node;
    }

    T rootValue()
    {
        if(root_node) return rootValue;

    }

     bool empty() {
          return root_node == nullptr;
           }

      int size() {

           return root_node ? root_node->size() : 0;

            }
        int height() {

           return root_node ? root_node->height() : 0;

            }






};



int main()
{





}
