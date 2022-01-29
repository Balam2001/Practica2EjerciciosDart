import "dart:io";

void main() {
  String binario = '';
  int mod;
  var decimal;
  int decimaL;

  print("Ingrese el decimal");
  decimal = stdin.readLineSync();
  decimaL = int.parse(decimal);

  while (decimaL != 0) {
    mod = decimaL % 2;
    decimaL = (decimaL / 2).toInt();
    print(decimaL);
    binario = '$mod' + binario;
  }
  print(binario);
}
