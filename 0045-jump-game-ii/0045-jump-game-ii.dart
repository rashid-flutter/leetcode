class Solution {
  int jump(List<int> nums) {
    int n=nums.length;
    if(n<=1)return 0;

    int jump  =0;
    int end=0;
    int farthest=0;
    for(int i=0;i<n-1;i++){
 farthest=max(farthest,i+nums[i]);
  if(i==end){
    jump++;
    end=farthest;
    if(end>=n-1) break;
  }
    }return jump;
  }
  int max(int a, int b){
   return (a>b)?a:b;
  }
}