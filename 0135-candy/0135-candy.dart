class Solution {
  int candy(List<int> ratings) {
    int n=ratings.length;
    if(n==0)return 0;
    List<int> candies = List<int>.filled(n, 1);
    for(int i=1;i<n;i++){
        if(ratings[i]>ratings[i-1]){
            candies[i]=candies[i-1]+1;
        }
    }
    for(int i=n-2;i>=0;i--){
         if (ratings[i] > ratings[i + 1]) {
      candies[i] = max(candies[i], candies[i + 1] + 1);
    }
    }
      return candies.reduce((a, b) => a + b);

  }
  int max(int a, int b){
    return (a>b)?a:b;
  }
}