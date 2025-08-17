import 'package:lazycoder/src/app_config/imports/import.dart';

mixin ValidatorMixin {
  static const String _requiredErrorMessage = '*Required';

  String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredErrorMessage;
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (requiredValidator(value) != null) {
      return _requiredErrorMessage;
    }
    final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,}$");
    if (!emailRegex.hasMatch(value!)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (requiredValidator(value) != null) {
      return _requiredErrorMessage;
    }
    if (value!.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? confirmPasswordValidator(String? value, String? password) {
    if (requiredValidator(value) != null) {
      return _requiredErrorMessage;
    }
    if (value != password) {
      return 'Password does not match';
    }
    return null;
  }

  String? listValidator(List? value) {
    if (value == null || value.isEmpty) {
      return _requiredErrorMessage;
    }
    return null;
  }
}
