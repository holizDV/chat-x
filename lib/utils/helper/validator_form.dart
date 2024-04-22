abstract class ValidatorForm {
  static String? validateRequired(String? value) {
    value = (value ?? "").trim();
    if (value.isEmpty) {
      return "field cannot be empty";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

    value = (value ?? "").trim();
    if (value.isEmpty) {
      return "field cannot be empty";
    }
    if (!emailRegex.hasMatch(value)) {
      return "invalid email";
    }
    return null;
  }
}
