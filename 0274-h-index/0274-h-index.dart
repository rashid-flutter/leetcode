class Solution {
  int hIndex(List<int> citations) {
citations.sort((a, b)=>b.compareTo(a));
int h=0;
while(h<citations.length && citations[h]>h){
    h++;
}return h;
  }
}