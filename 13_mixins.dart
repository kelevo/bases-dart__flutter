Mixins

abstract class Animal {
  
}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}


abstract mixin class Volador {
  void volar() => print( 'Estoy volando' );
}

abstract mixin class Caminante {
  void caminar() => print( 'Estoy caminando' );
}

abstract mixin class Nadador {
  void nadar() => print( 'Estoy nadando' );
}


class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Mamifero with Volador, Nadador {}

void main() {
  
  final flipper = Delfin();
  flipper.nadar();
  
  final bat = Murcielago();
  bat.volar();
  bat.caminar();
  
}