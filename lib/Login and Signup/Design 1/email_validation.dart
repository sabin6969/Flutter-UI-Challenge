bool validateEmail(String email) {
  final String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(email);
}
