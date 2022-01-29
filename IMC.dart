import "dart:io";

void main() {
  double height;
  double weight;
  double meters;
  double IMC;
  var altura;
  var peso;

  print("Por favor, ingrese su altura");
  altura = stdin.readLineSync();
  height = double.parse(altura);

  print("Por favor, ingrese su peso");
  peso = stdin.readLineSync();
  weight = double.parse(peso);

  meters = height / 100;
  IMC = weight / (meters * meters);

  if (IMC < 18.5) {
    print("IMC de $IMC, Peso inferior al normal");
  }
  if (IMC >= 18.5 && IMC < 25) {
    print("IMC de $IMC, Peso normal");
  }
  if (IMC >= 25 && IMC < 30) {
    print("IMC de $IMC, Peso superior al normal");
  }
  if (IMC >= 30) {
    print("IMC de $IMC, Obesidad");
  }
}
