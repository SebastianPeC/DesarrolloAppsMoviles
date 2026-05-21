import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Text(
              'Hola, soy un un mensaje diferente de prueba',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        _ImageBubble(),
        // TODO: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif",
    );
  }
}
