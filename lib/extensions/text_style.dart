extension Test on String {
  String toUpperCaseFirstLetter() {
    if (isNotEmpty) {
      if (length > 2) {
        return this[0].toUpperCase() + substring(1).toLowerCase();
      } else {
        return toUpperCase();
      }
    } else {
      throw Exception('String is empty.');
    }
  }
}
