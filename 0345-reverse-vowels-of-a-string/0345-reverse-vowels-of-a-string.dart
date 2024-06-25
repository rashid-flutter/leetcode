class Solution {
  String reverseVowels(String s) {
    Set<String> vowels={'a','e','i','o','u','A','E','I','O','U'};
        List<String>chars=s.split('');
        List<String>stack=[];
        for(String char in chars){
            if(vowels.contains(char)){
                stack.add(char);
            }
        }
        for(int i=0;i<chars.length;i++){
            if(vowels.contains(chars[i])){
                chars[i]=stack.removeLast();
            }
        }return chars.join('');
  }
}