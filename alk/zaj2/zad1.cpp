#include <iostream>
using namespace std;

int main(){
	
	int k, pom;
	cin>>k;
	
	//wype³nianie tablicy
	int T[100000]; 
	for(int y = k; y>=0; y--)
	{
		for(int p=1; p<=k; p++)
		{
			T[p]=1;
		}
		int i;
		do
		{
			i=k;
			pom=0;
			//wypisywanie ci¹gu
				for(int z=1; z<=k; z++)
				{
					if(T[z]==1) pom++;
				}
				if(pom == y){
					cout<<"{ ";
					for(int z=1; z<=k; z++)
					{
						if(T[z]!=1) cout<<z<<" ";
					}
					cout<<"}"<<endl;
				}
			//szukanie miejsca	
			while(i>=1 && T[i]==2)
				i--;
			if(i>=1)
			{
				T[i]++;
				for(int j=i+1; j<=k; j++)
				{
					T[j]=1;
				}
			}
			
		}
		while(i!=0);
	}
	return 0;
}
