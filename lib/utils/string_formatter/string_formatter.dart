class StringFormatter {
  String capitalizeFirstLetter(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }

  String getFirstName(String fullName) {
    return fullName.split(' ')[0];
  }
}
