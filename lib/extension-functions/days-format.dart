import '../generated/l10n.dart';

extension StringToTime on String {
  String toDays() {
    try {
      final dateTime = DateTime.parse(this);
      final dateNow = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 0, 0, 0, 0, 0);
      final compare = dateTime.compareTo(dateNow);
      if (compare == 0){
        return S.current.hoy;
      }else{
        final weekDay = dateTime.weekday;
        switch (weekDay) {
          case 1:
            return S.current.lunes;
          case 2:
            return S.current.martes;
          case 3:
            return S.current.miercoles;
          case 4:
            return S.current.jueves;
          case 5:
            return S.current.viernes;
          case 6:
            return S.current.sabado;
          case 7:
            return S.current.domingo;
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