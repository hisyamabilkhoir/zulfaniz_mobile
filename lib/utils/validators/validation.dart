class TValidator {
  // Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // check for minimum password length
    if (value.length < 6) {
      return 'Password harus lebih dari 6 karakter.';
    }

    // check for uppercase letter
    if (!value.contains(RegExp(r'[A-X]'))) {
      return 'Password setidaknya harus ada satu huruf besar';
    }

    // check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password setidaknya harus ada satu nomor';
    }

    // check for special character
    if (!value.contains(RegExp(r'[!@#$%^&*()<>?";{}|<>]'))) {
      return 'Password setidaknya harus ada satu karakter spesial';
    }

    return null;
  }

  static String? validatePhoneNumber(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // Reguler expression for phone number validation (assuming a 10-digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digit required).';
    }
    return null;
  }
}
