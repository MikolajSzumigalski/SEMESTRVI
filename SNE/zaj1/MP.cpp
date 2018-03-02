#include <iostream>
using namespace std;

double f(double x){
	
	if(x >= 0) return 1;
	
	else return 0;
}
int main(){
	
	double y, w[1000], u[1000], suma;
	string wybor;
	int n;
	while(1)
	{
		suma = 0;
		cout<<"wybierz AND, NOT, lub OR"<<endl;
		cin>>wybor;
		
		if(wybor == "AND")
		{
			n = 3;
			for(int i=1; i<n; i++)
				cin>>u[n];
			u[3]=1;	
			w[1]= 0.3;
			w[2]= 0.3;
			w[3]= -0.5;
			for(int i=1; i<=n; i++)
				suma += (w[i] * u[i]);

			cout<<f(suma)<<endl;
				
		}else if (wybor == "NOT"){
			n = 2;
			for(int i=1; i<n; i++)
				cin>>u[n];
			w[1] = 0.3;
			w[2] = -0.5;	
			for(int i=1; i<=n; i++)
				suma = suma + (w[i] * u[i]);	
			cout<<f(suma)<<endl;	
		} else if (wybor == "OR"){
			n = 3;
			for(int i=1; i<n; i++)
				cin>>u[n];
			u[3]=1;	
			w[1]= 0.3;
			w[2]= 0.3;
			w[3]= -0.2;
			for(int i=1; i<=n; i++)
				suma = suma + (w[i] * u[i]);
			cout<<f(suma)<<endl;
		} else cout<<"Polecenie niepoprawne"<<endl;
		
	}
	
	return 0;
} 
