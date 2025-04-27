extension StringToTime on String {
  String toHour() {
    try {
      final dateTime = DateTime.parse(this);
      return dateTime.hour.toString().padLeft(2, '0'); // Formatea la hora con 2 dígitos
    } catch (e) {
      // En caso de que la fecha no sea válida, puedes manejar el error aquí
      return '00'; // Valor por defecto en caso de error
    }
  }
}