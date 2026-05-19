import 'package:flutter/material.dart';
import 'package:tectok/config/theme/app_theme.dart';
import 'package:tectok/presentation/screen/discover/discover_screen.dart';
import 'package:provider/provider.dart';
import 'package:tectok/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'Tectok',
        theme: AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        home: DiscoverScreen(),
      ),
    );
  }
}
