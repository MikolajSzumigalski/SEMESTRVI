#include <iostream>
#include <string> 
using namespace std;

int rekurencja(int k, int n, string wyraz){
	if(k>0)
		{
			for(int i=1; i<=n; i++)	
				{
					wyraz=wyraz+"a";//to_string(i);
					rekurencja(k-1, n, wyraz );	
			}
		}
		else 
		{
			cout<<"{ ";
			//for(int i=1; i<k; i++)
				cout<<wyraz<<" ";

			cout<<"}"<<endl;	
			return 0;
		}
}

int main(){
	int k, n;
	 cin>>k>>n;
	 cout<<rekurencja(k, n, "")<<endl;
}
