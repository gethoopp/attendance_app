


extension  string_validate on String? {
  String? get validateEmail {
    if (this == null) {
      return null;
    }

    if (this!.isEmpty ) {
      return "Email tidak boleh kosong";
    }

    return null;
  }
}