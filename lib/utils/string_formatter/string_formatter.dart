extension StringFormatter on String {
  String capitalizeFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String getFirstName() {
    return this.split(' ')[0];
  }
}
