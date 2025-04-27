extension StringToTime on String {
  String toDays() {
    try {
      final dateTime = DateTime.parse(this);
      final dateNow = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 0, 0, 0, 0, 0);
      final compare = dateTime.compareTo(dateNow);
      if (compare == 0){
        return "Hoy";
      }else{
        final weekDay = dateTime.weekday;
        switch (weekDay) {
          case 1:
            return "Lunes";
          case 2:
            return "Martes";
          case 3:
            return "Miércoles";
          case 4:
            return "Jueves";
          case 5:
            return "Viernes";
          case 6:
            return "Sábado";
          case 7:
            return "Domingo";
          default:
            return "";
        }
      }
    } catch (e) {
      // En caso de que la fecha no sea válida, puedes manejar el error aquí
      return ''; // Valor por defecto en caso de error
    }
  }
}