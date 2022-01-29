import "dart:io";

main() {
  var phrase;
  String phrase_without_spaces = '';
  String inversal_phrase = '';
  int num_words = 0;
  bool palindrome = true;

  print("Por favor, ingrese su frase");
  phrase = stdin.readLineSync();
  phrase = phrase.toLowerCase();

  for (int x = 0; x <= (phrase.length - 1); x++) {
    if (phrase[x] != ' ') {
      phrase_without_spaces = phrase_without_spaces + phrase[x];
    }
  }

  for (int x = (phrase.length - 1); x >= 0; x--) {
    if (phrase[x] != ' ') {
      inversal_phrase = inversal_phrase + phrase[x];
    }
  }

  for (int x = 0; x <= (phrase_without_spaces.length - 1); x++) {
    if (phrase_without_spaces[x] == inversal_phrase[x]) {
      palindrome = true;
    } else {
      palindrome = false;
      break;
    }
  }
  if (palindrome == true) {
    print('Correcto, es un palindromo');

    for (int x = 0; x <= (phrase.length - 1); x++) {
      if (x < (phrase.length - 1)) {
        if (phrase[x] == ' ' && phrase[x - 1] != ' ' && phrase[x + 1] != ' ') {
          num_words = num_words + 1;
        }
      }
    }

    print('Numero de palabras: ${num_words + 1}');
  } else {
    print('Lo lamento, la frase que introdujo no es un palindromo');
  }
}
