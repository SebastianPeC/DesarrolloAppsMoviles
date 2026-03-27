abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volar {
  void volar() => print('estoy volando');
}

mixin Caminar {
  void caminar() => print('estoy caminando');
}

mixin Nadar {
  void nadar() => print('estoy nadando');
}

// Mamíferos
class Delfin extends Mamifero with Nadar {}

class Murcielago extends Mamifero with Caminar, Volar {}

class Gato extends Mamifero with Caminar {}

// Aves
class Pato extends Ave with Caminar, Volar, Nadar {}

class Paloma extends Ave with Caminar, Volar {}

// Peces
class Tiburon extends Pez with Nadar {}

class PezVolador extends Pez with Nadar, Volar {}

void main() {
  print('\n--Delfin--');
  final flipper = Delfin();
  flipper.nadar();

  print('\n--Murcielago--');
  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  print('\n--Gato--');
  final garfield = Gato();
  garfield.caminar();

  final pato = Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();

  print('\n--Paloma--');
  final paloma = Paloma();
  paloma.caminar();
  paloma.volar();

  print('\n--Tiburon--');
  final tiburon = Tiburon();
  tiburon.nadar();

  print('\n--PezVolador--');
  final pezVolador = PezVolador();
  pezVolador.nadar();
  pezVolador.volar();
}
