extension FormatTem on double {
  String toTemp() {
    try {
      return '${this.toString().split("\.")[0]}º';
    } catch (e) {
      return '-º';
    }
  }
}