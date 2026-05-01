import 'package:flutter/material.dart';
//menú dinámico
import '../../config/menu/app_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio - Counter App'),
        centerTitle: true,
      ),
      //función del menú en app_menu.dart
      drawer: crearMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Has presionado el botón:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w200,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              'Click${(contador == 1) ? '' : 's'}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: _BotonesFlotantes(
        alIncrementar: () => setState(() => contador++),
        alDecrementar: () => setState(() => contador > 0 ? contador-- : null),
        alReiniciar: () => setState(() => contador = 0),
      ),
    );
  }
}

// Widget personalizado para organizar los botones de acción
class _BotonesFlotantes extends StatelessWidget {
  final VoidCallback alIncrementar;
  final VoidCallback alDecrementar;
  final VoidCallback alReiniciar;

  const _BotonesFlotantes({
    required this.alIncrementar,
    required this.alDecrementar,
    required this.alReiniciar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'btn_reiniciar',
          onPressed: alReiniciar,
          tooltip: 'Reiniciar contador',
          child: const Icon(Icons.refresh_rounded),
        ),
        const SizedBox(height: 12),
        FloatingActionButton(
          heroTag: 'btn_incrementar',
          onPressed: alIncrementar,
          tooltip: 'Sumar 1',
          child: const Icon(Icons.add_rounded),
        ),
        const SizedBox(height: 12),
        FloatingActionButton(
          heroTag: 'btn_decrementar',
          onPressed: alDecrementar,
          tooltip: 'Restar 1',
          child: const Icon(Icons.remove_rounded),
        ),
      ],
    );
  }
}
