bool isPalindrome(String s)
{
  if (s.length < 3) return false;

  String cleaned = s.replaceAll(' ', '').toLowerCase();

  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;
}
