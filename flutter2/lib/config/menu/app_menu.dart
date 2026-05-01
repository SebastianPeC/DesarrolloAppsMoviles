import 'package:flutter/material.dart';
import '../../presentation/screens/login_screen.dart';
import '../../presentation/screens/perfil_screen.dart';
import '../../presentation/screens/ajustes_screen.dart';
import '../../presentation/screens/notificaciones_screen.dart';

// MAPA DINÁMICO RECURSIVO
final Map<String, dynamic> menuMap = {
  'titulo': 'Menú Principal',
  'hijos': [
    {'titulo': 'Inicio', 'icono': Icons.home_rounded, 'pantalla': null},
    {
      'titulo': 'Cuenta de Usuario',
      'icono': Icons.manage_accounts_rounded,
      'hijos': [
        {
          'titulo': 'Iniciar Sesión',
          'icono': Icons.login_rounded,
          'pantalla': const LoginScreen(),
        },
        {
          'titulo': 'Mi Perfil',
          'icono': Icons.person_outline_rounded,
          'pantalla': const PerfilScreen(),
        },
      ],
    },
    {
      'titulo': 'Preferencias',
      'icono': Icons.tune_rounded,
      'hijos': [
        {
          'titulo': 'Configuración',
          'icono': Icons.settings_suggest_rounded,
          'pantalla': const AjustesScreen(),
        },
        {
          'titulo': 'Notificaciones',
          'icono': Icons.notifications_none_rounded,
          'pantalla': const NotificacionesScreen(),
        },
      ],
    },
  ],
};

// FUNCIÓN RECURSIVA: Construye ListTiles o ExpansionTiles dinámicamente
List<Widget> construirItemsMenu(BuildContext context, List<dynamic> hijos) {
  return hijos.map((item) {
    if (item.containsKey('hijos')) {
      // Si tiene hijos, se crea un grupo desplegable
      return ExpansionTile(
        leading: Icon(item['icono']),
        title: Text(item['titulo']),
        children: construirItemsMenu(
          context,
          item['hijos'],
        ), // Llamada recursiva
      );
    } else {
      // Si es un item final, se configura la navegación
      return ListTile(
        leading: Icon(item['icono']),
        title: Text(item['titulo']),
        onTap: () {
          Navigator.pop(context); // Cierra el menú lateral
          if (item['pantalla'] != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => item['pantalla']),
            );
          }
        },
      );
    }
  }).toList();
}

Widget crearMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 60, color: Colors.white),
              SizedBox(height: 10),
              Text(
                'Panel de Control',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        ...construirItemsMenu(context, menuMap['hijos']),
      ],
    ),
  );
}
