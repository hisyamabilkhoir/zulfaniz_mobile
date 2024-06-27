// Custom exception class to handle various format-related errors.
class TFormatException implements Exception {
  // The error code associated with ehe exception
  final String message;

  // Constructor that takes an error code.
  const TFormatException(
      [this.message =
          'an unexpected format error occured. Please check your input.']);

  // Create a format exception from a specific error message.
  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  // Get the corresponding error message
  String get formattedMessage => message;

  // Get the corresponding error message based on the error code.
  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'unknown':
        return const TFormatException(
            'An unknown Firebase error occured. Please try again.');
      case 'user-disabled':
        return const TFormatException(
            'This user account has been disabled. Please contact support fo assistance.');
      case 'custom-token-mismatch':
        return const TFormatException(
            'The custom token corresponds to a different audience.');
      case 'email-already-in-use':
        return const TFormatException(
            'The email address is already registered. Please use a different email.');
      case 'invalid-email':
        return const TFormatException(
            'The email address provided is invalid. Please enter a valid email.');
      case 'weak-password':
        return const TFormatException(
            'The password is too weak. Please choose a stringer password.');
      case 'user-not-found':
        return const TFormatException('Invalid login details. User not found.');
      case 'wrong-password':
        return const TFormatException(
            'Incorrect password. Please check your password and try again');
      case 'invalid-verification-code':
        return const TFormatException(
            'invalid verification code. Please enter a valid code');
      case 'invalid-verification-id':
        return const TFormatException(
            'invalid verification ID. Please request a new verification code');
      case 'captcha-check-failed':
        return const TFormatException(
            'The reCAPTCHA response is invalid. Please try again.');
      case 'app-not-authorized':
        return const TFormatException(
            'The app is not authorized to use Firebase authentication with the provide api key.');
      case 'keychain-error':
        return const TFormatException(
            'A keychain error occured. Please check the keychain and try again.');
      case 'internal-error':
        return const TFormatException(
            'An internal authentication error occurred. Please try again later.');
      case 'quota-exceede':
        return const TFormatException('Quota exceeded. Please try again later');
      case 'email-already-exists':
        return const TFormatException(
            'The email address already exists. Please use a different email.');
      case 'provider-already-linked':
        return const TFormatException(
            'The account is already linked with another provider.');
      case 'requires-recent-login':
        return const TFormatException(
            'This operation is sensitive and requires recent authentication. Please log in again.');
      case 'credential-already-in-use':
        return const TFormatException(
            'This credential do not associated with a different user account.');
      case 'user-mismatch':
        return const TFormatException(
            'The supplied credentials do not correspond to the previously signed in user.');
      case 'account-exists-with-different-credential':
        return const TFormatException(
            'An account already exists with the same email but different sign-in credentials.');
      case 'operation-not-allowed':
        return const TFormatException(
            'This operation is not allowed. Contact support for assistance.');
      case 'expired-action-code':
        return const TFormatException(
            'The action code has expired. Please request a new action code.');
      case 'invalid-action-code':
        return const TFormatException(
            'The action code is invalid. Please check the code and try again.');
      case 'missing-action-code':
        return const TFormatException(
            'The action code is missing. Please provide a valid action code.');
      case 'user-token-expired':
        return const TFormatException(
            'The user\'s token has expired, and authentication is required. Please sign in again.');
      case 'user-not-found':
        return const TFormatException(
            'The user\'s token has expired, and authentication is required. Please sign in again.');
      case 'invalid-credential':
        return const TFormatException(
            'The supplied credential is malformed or has expired.');
      case 'wrong-password':
        return const TFormatException(
            'The password is invalid. Please check your password an try again.');
      case 'user-token-revoked':
        return const TFormatException(
            'The user\'s token has been revoked. Please sign in again.');
      case 'invalid-message-payload':
        return const TFormatException(
            'The email template verification message payload is invalid.');
      case 'invalid-sender':
        return const TFormatException(
            'The email template sender is invalid. Please verify the sender\'s email.');
      case 'invalid-recipient-email':
        return const TFormatException(
            'The recipient email address is invalid. Please provide a valid recipient email.');
      case 'missing-action':
        return const TFormatException(
            'The recipient email address is invalid. Please provide a valid recipient email.');
      default:
        return const TFormatException(
            'An unexpected Firebase error occured. Please try again.');
    }
  }
}
