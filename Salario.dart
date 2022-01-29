import "dart:io";

void main() {
  var horas;
  int horaS;
  double horasExtra;
  double neto;
  double salarioperHora = 120;
  double salarioExtra = 175;

  print("Ingrese la horas de trabajo");
  horas = stdin.readLineSync();
  horaS = int.parse(horas);
  if (horaS <= 40) {
    neto = horaS * salarioperHora;
  } else {
    neto = 40 * salarioperHora;
    horasExtra = horaS - 40;
    neto = neto + (horasExtra * salarioExtra);
  }
  print('Salario: $neto');
  if (horaS < 27) {
    print('No ha completado con el total de horas minima');
  }
}
