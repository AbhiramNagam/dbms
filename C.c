#include <stdio.h>

#include <stdlib.h>

struct node 

{ 

    int val; 

    struct node *left, *right; 

}; 

struct node* newNode(int item) 

{ 

    struct node* temp =  (struct node *)malloc(sizeof(struct node)); 

    temp->val = item; 

    temp->left = temp->right = NULL; 

    return temp; 

} 

void preorder(struct node* root) 

{ 

    if (root != NULL) 

    { 

        if((root->val)%2==0)

        printf("%d ", root->val); 

        preorder(root->left); 

        preorder(root->right);

    } 

} 

struct node* insert(struct node* node, int val) 

{ 

    if (node == NULL) return newNode(val); 

    if (val < node->val) 

        node->left  = insert(node->left, val); 

    else if (val > node->val) 

        node->right = insert(node->right, val);    

    return node; 

} 

   

int main() 

{ 

    int n,data;

    struct node *root=NULL;

    scanf("%d",&n);

    int a[n];

    for(int i=0;i<n;i++)

    {

        scanf("%d",&a[i]);

    }

    for(int i=0;i<1;i++)

    {

        root=insert(root,a[i]);

    }

    for(int i=1;i<n;i++)

    {

        insert(root,a[i]);

    }

    preorder(root); 

   

    return 0; 

}
