class Solution {
  int compress(List<String> chars) {
     int indexAns = 0;
  int index = 0;

  while (index < chars.length) {
    int count = 0;
    while (index + count < chars.length && chars[index] == chars[index + count]) {
      count++;
    }

    chars[indexAns++] = chars[index];
    if (count > 1) {
      for (String digit in count.toString().split('')) {
        chars[indexAns++] = digit;
      }
    }

    index += count;
  }

  return indexAns;
  }
}