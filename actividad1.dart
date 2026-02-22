class Persona {
  String nombre;
  int edad;
  String ciudad;
  double altura;

  // Constructor normal
  Persona(this.nombre, this.edad, this.ciudad, this.altura);

  // Constructor por nombre que recibe JSON
  Persona.desdeJson(Map<String, dynamic> json)
    : nombre = json['nombre'],
      edad = json['edad'],
      ciudad = json['ciudad'],
      altura = json['altura'];

  // Funcion tradicional sin parametros
  void saludar() {
    print("Hola, mi nombre es $nombre y mi edad es $edad.");
  }

  // Funcion tradicional con parametros
  void cambiarCiudad(String nuevaCiudad) {
    ciudad = nuevaCiudad;
    print("Ahora vivo en $ciudad.");
  }

  // Funcion de flecha sin parametros
  void mostrarAltura() => print("Mido $altura metros.");

  // Funcion de flecha con parametros
  int sumarEdad(int extra) => edad + extra;
}

void main() {
  // Probando constructor normal
  Persona p1 = Persona("Carlos", 20, "Bogota", 1.75);

  print("Datos de la persona 1:");
  print("Nombre: ${p1.nombre}");
  print("Edad: ${p1.edad}");
  print("Ciudad: ${p1.ciudad}");
  print("Altura: ${p1.altura}");

  p1.saludar();
  p1.cambiarCiudad("Medellin");
  p1.mostrarAltura();

  int edadFutura = p1.sumarEdad(5);
  print("En 5 anos mi edad sera $edadFutura.");

  print("\n------------------\n");

  // Probando constructor desde JSON
  Map<String, dynamic> datos = {
    "nombre": "Laura",
    "edad": 22,
    "ciudad": "Cali",
    "altura": 1.65,
  };

  Persona p2 = Persona.desdeJson(datos);

  print("Datos de la persona 2:");
  print("Nombre: ${p2.nombre}");
  print("Edad: ${p2.edad}");
  print("Ciudad: ${p2.ciudad}");
  print("Altura: ${p2.altura}");

  p2.saludar();
  p2.mostrarAltura();
}
