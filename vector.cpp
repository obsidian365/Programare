#include <iostream>
#include<cmath>
//se citeste un vector. sa se calculeze suma patrate perfecte

using namespace std;
int V[101],n,i,s,d,p;
int main()
{
    cout << "Bugulet Raluca" << endl;
    cout << "Introduceti dimensiunea vectorului: "<< endl;
    cin>>n;

    cout << "Introduceti elementele vectorului: " << endl;
    for(i=1;i<=n;i++) cin>> V[i];

    s=0;
    for(i=1;i<=n;i++)
    if(p = sqrt(V[i]); (p * p == V[i])) { 
		s=s+V[i]; 
		}

    cout<< "Suma patratelor perfecte din vector este: " << s;
    return 0;
}
