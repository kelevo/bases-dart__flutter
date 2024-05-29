void main() {
  
  print(greetEveryone());
  
  print('Suma: ${ addTwoNumbers( 2, 20 ) }');

}

String greetEveryone() {
  return 'Hello everyone';
}

// Funciones de flecha
String greetEveryoneArrow() => 'Hello everyone';

int addTwoNumbers( int a, int b ) {
  return a + b;
}

int addTwoNumbersOptional( int a, [ int b = 0 ] ) {
  
  //b ??= 0;
  return a + b;
  
}

// Funcion de flecha
int addTwoNumbersArrow( int a, int b ) => a + b;