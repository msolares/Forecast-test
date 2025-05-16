extension FormatHour on String {
  String toHour() {
    try {
      final dateTime = DateTime.parse(this);
      return dateTime.hour.toString().padLeft(2, '0');
    } catch (e) {
      return '00';
    }
  }
}