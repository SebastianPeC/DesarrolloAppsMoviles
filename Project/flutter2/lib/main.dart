import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.purple),
      title: 'CounterApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CounterApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout_rounded),
            ),
          ],
          leading: const Icon(Icons.menu_rounded),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                counter == 1 ? 'Click' : 'Clicks',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            _CustomButton(
              icon: Icons.plus_one_rounded,
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            const SizedBox(height: 10),
            _CustomButton(
              icon: Icons.exposure_minus_1_rounded,
              onPressed: () {
                setState(() {
                  if (counter > 0) {
                    counter--;
                  }
                });
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _CustomButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onPressed, child: Icon(icon));
  }
}
