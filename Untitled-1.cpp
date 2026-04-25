#include<bits/stdc++.h>
using namespace std;
int sum(vector<int>book,int n,int target);
{
    mapp<int,int>npp;
    
    for(i=0;i<n;i++)
    {
        int a=book[i];
        int rem=target-a;
        if(npp.find(rem)!=npp.end()){
            return "Yes";
        
        }
        npp[a]=i;
    }
    return "No";
}
int main()
{
    int n, i,target;
    cout<<"Enter the siz of an array:";
    cin>>n;
    vector<int>book(n);
    for(i=0;i<n;i++)
    {
        cin>>book[i];

    }
    cout<<"Enter the target sum:";
    cin>>target;
    int result=sum(book,n,target);
    
    return 0;

}