class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) return 'Please enter a valid email address';
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) return 'Please enter a password';
    return null;
  }
}
