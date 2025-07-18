bool isPalindrome(String s) {
  if (s.length < 3) return false;

  String cleaned = s.replaceAll(' ', '').toLowerCase();

  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;
}

String longestPalindrome(String s) {
  int maxLength = 0;
  String longest = "none";

  for (int start = 0; start < s.length; start++) {
    for (int end = start + 1; end <= s.length; end++) {
      String substring = s.substring(start, end);
      if (isPalindrome(substring) && substring.length > maxLength) {
        maxLength = substring.length;
        longest = substring;
      }
    }
  }
  return longest;
}
