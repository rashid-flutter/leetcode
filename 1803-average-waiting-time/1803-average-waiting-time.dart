class Solution {
  double averageWaitingTime(List<List<int>> customers) {
     int currentTime = 0;
  int totalWaitingTime = 0;

  for (List<int> customer in customers) {
    int arrivalTime = customer[0];
    int prepTime = customer[1];

    if (currentTime < arrivalTime) {
      currentTime = arrivalTime;
    }

    currentTime += prepTime;
    int waitingTime = currentTime - arrivalTime;
    totalWaitingTime += waitingTime;
  }

  return totalWaitingTime / customers.length;
  }
}