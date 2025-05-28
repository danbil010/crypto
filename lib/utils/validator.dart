class Validators {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }
    // Regex for validating phone numbers
    final RegExp phoneExp = RegExp(r'^\+?[0-9]{10,15}$');
    if (!phoneExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // Add more password validation logic here if needed
    return null;
  }

  static String? validateCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a code';
    }
    // Add more complex code validation if needed
    return null;
  }

  static String? validateLocation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a location';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    // Regex for validating email addresses
    final RegExp emailExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
