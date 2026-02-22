// Clase abstracta que define un contrato para clases que pueden hablar
abstract class Comunicador {
  void hablar(); // Método que obliga a implementar
}

// Mixin para agregar la habilidad de correr
mixin Corredor {
  void correr() {
    print("¡Estoy corriendo!");
  }
}

// Mixin para agregar la habilidad de volar
mixin Volador {
  void volar() {
    print("Estoy volando en el cielo");
  }
}

// Clase Humano que implementa Comunicador y usa Corredor
class Humano extends Comunicador with Corredor {
  String nombre;

  Humano(this.nombre);

  @override
  void hablar() {
    print("$nombre dice: ¡Hola!");
  }
}

// Clase Pajaro que implementa Comunicador y usa Volador
class Pajaro extends Comunicador with Volador {
  String especie;

  Pajaro(this.especie);

  @override
  void hablar() {
    print("El $especie hace pío pío");
  }
}

void main() {
  Humano persona = Humano("Sebastián");
  persona.hablar();
  persona.correr();

  Pajaro loro = Pajaro("loro");
  loro.hablar();
  loro.volar();
}
