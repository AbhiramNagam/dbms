#include <stdio.h>
#include <stdlib.h>
struct node { 
    struct node *left;
    int val;
    struct node *right;

}; 

struct node* newNode(int item) { 
    struct node* temp =  (struct node *)malloc(sizeof(struct node)); 
    temp->val = item; 
    temp->left = temp->right = NULL; 
    return temp; 
}

struct node* insert(struct node* node, int val){
    if (node == NULL) 
        return newNode(val);
    if (val < node->val) 
        node->left  = insert(node->left, val); 
    else if (val > node->val) 
        node->right = insert(node->right, val);    

    return node; 

}

void inorderTraversal(struct node* root) {
    if (root == NULL)
        return;
    inorderTraversal(root->left);
    printf("%d ->", root->val);
    inorderTraversal(root->right);
}

void preorderTraversal(struct node* root){
    if (root == NULL)
        return;
    printf("%d ->", root->val);
    preorderTraversal(root->left);
    preorderTraversal(root->right);
}

void postorderTraversal(struct node* root) {
    if (root == NULL)
        return;
    postorderTraversal(root->left);
    postorderTraversal(root->right);
    printf("%d ->", root->val);
}

int height(struct node* node){
    if (node == NULL)
        return 0;
    else{
        int lheight = height(node->left);
        int rheight = height(node->right);
        
        if (lheight > rheight)
            return (lheight + 1);
        else
            return (rheight + 1);
    }
}

void printCurrentLevel(struct node* root, int level){
    if (root == NULL)
        return;
    if (level == 1)
        printf("%d ", root->val);
    else if (level > 1) {
        printCurrentLevel(root->left, level - 1);
        printCurrentLevel(root->right, level - 1);
    }
}

void printLevelOrder(struct node* root){
    int h = height(root);
    int i;
    for (i = 1; i <= h; i++){
        printf("\n          Level %d : ",i-1);
        printCurrentLevel(root, i);
    }
        
}

int main(){
    int n,data;
    struct node *root=NULL;
    scanf("%d",&n);
    int a[n];

    for(int i=0;i<n;i++){
        scanf("%d",&a[i]);
    }
    
    root=insert(root,a[0]);
    for(int i=1;i<n;i++){
        insert(root,a[i]);
    }
    
    printf("\nPre-Order :  ");
    preorderTraversal(root);
    
    printf("\nInorder : ");
    inorderTraversal(root);
    
    printf("\nPostorder : ");
    postorderTraversal(root);
    
    printf("\nLevel order : ");
    printLevelOrder(root);
    
    printf("\n");
    
    return 0;
}
