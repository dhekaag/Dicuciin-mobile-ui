class SignupEmailAndPasswordFailure {
  final String message;

  const SignupEmailAndPasswordFailure(
      [this.message = "An unknown error occurred."]);

  factory SignupEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupEmailAndPasswordFailure(
            'Please enter a strong password');
      case 'invalid-email':
        return const SignupEmailAndPasswordFailure(
            'Email is not a valid or badly formatted');
      case 'email-already-in-use':
        return const SignupEmailAndPasswordFailure(
            'An account already exists for that email.');
      case 'operation-not-allowed':
        return const SignupEmailAndPasswordFailure(
            'Operation is not allowed. please contact support.');
      case 'user-disabled':
        return const SignupEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help.');

      default:
        return const SignupEmailAndPasswordFailure();
    }
  }
}
