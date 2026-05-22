import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:parcial_3/domain/entities/message.dart';
import 'package:http/http.dart' as http;

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key, required this.message});

  final Message message;

  Future<String> getPokemonImage() async {
    final response = await http.get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon/charizard'),
    );

    final data = jsonDecode(response.body);

    return data['sprites']['front_default'];
  }

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
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 10),

        FutureBuilder<String>(
          future: getPokemonImage(),

          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            return ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.network(
                snapshot.data!,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
