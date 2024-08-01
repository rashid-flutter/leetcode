class Solution {
  int countSeniors(List<String> details) {
int count = 0;

  for (String detail in details) {
    // Extract the age part from the detail string
    String ageStr = detail.substring(11, 13);
    
    // Convert the age to an integer
    int age = int.parse(ageStr);
    
    // Check if the age is greater than 60
    if (age > 60) {
      count++;
    }
  }

  return count;
  }
}