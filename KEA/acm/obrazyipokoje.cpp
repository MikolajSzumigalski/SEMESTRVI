#include <iostream>
using namespace std;
int main() {
 int d,n,pom,pomx, suma;
 cin>>d;
 int T[12000];
 int W[12000];
 for (int i =0; i<d; i++){
     cin>>n;
     for(int j=1; j<=5; j++){
         cin>>T[j];
     } 
     for(int j=1; j<=n; j++){
         W[j]=0;
     }
     for(int j=1; j<=n; j++){
         W[T[j]]++;
     }
     cout<<"kurwa jebana mać"<<endl;
     pom=1;
     while(pom<n+1){
         if(W[pom] == 0){
             pomx = T[pom];
             while(pomx < pom && W[pomx] > 0){
                 W[pomx]--;
                 if(W[pomx]>0){
                     break;
                 }
                 if(W[pomx] ==0){
                     pomx = T[pomx];
                 } 
             }   
             
         } 
         pom++;
     }
     suma = 0;
     for(int j=1; j<=n; j++){
         suma = suma +W[j];
     }
     cout<<suma<<endl;     
 }
}