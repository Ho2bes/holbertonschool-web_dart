void main(List<String> args) {
  if (args.isEmpty) {
    print('Please provide a score as a command-line argument.');
    return;
  }
  int score = int.parse(args[0]);
  assert(score >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}
