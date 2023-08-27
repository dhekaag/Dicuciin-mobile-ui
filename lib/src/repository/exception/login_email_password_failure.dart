class LoginEmailAndPasswordFailure {
  final String message;

  const LoginEmailAndPasswordFailure(
      [this.message = "An unknown error occurred"]);

  factory LoginEmailAndPasswordFailure.fromCode(String fromCode) {
    switch (fromCode) {
      case 'wrong-password':
        return const LoginEmailAndPasswordFailure(
            'The password is invalid or the user does not have a password.');
      case 'invalid-email':
        return const LoginEmailAndPasswordFailure(
            'The email address is badly formatted.');
      case 'user-not-found':
        return const LoginEmailAndPasswordFailure(
            'There is no user record corresponding to this identifier. The user may have been deleted.');

      default:
        return const LoginEmailAndPasswordFailure();
    }
  }
}
