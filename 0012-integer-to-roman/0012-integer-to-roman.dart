class Solution {
  String intToRoman(int nums) {
     List<Map<String, dynamic>> romanSymbols = [
    {'symbol': 'M', 'value': 1000},
    {'symbol': 'CM', 'value': 900},
    {'symbol': 'D', 'value': 500},
    {'symbol': 'CD', 'value': 400},
    {'symbol': 'C', 'value': 100},
    {'symbol': 'XC', 'value': 90},
    {'symbol': 'L', 'value': 50},
    {'symbol': 'XL', 'value': 40},
    {'symbol': 'X', 'value': 10},
    {'symbol': 'IX', 'value': 9},
    {'symbol': 'V', 'value': 5},
    {'symbol': 'IV', 'value': 4},
    {'symbol': 'I', 'value': 1},
  ];

  StringBuffer roman = StringBuffer();

  for (var symbolMap in romanSymbols) {
    while (nums >= symbolMap['value']) {
      roman.write(symbolMap['symbol']);
      nums = nums-symbolMap['value'] as int;
    }
  }

  return roman.toString();
  }
}