import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/search_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  int _currentIndex = 0;
  bool _isDarkMode = false;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remover a faixa de depuração
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light, // Corrigido o operador
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[50],
        ),
        scaffoldBackgroundColor: Colors.white, // Cor de fundo para o modo claro
        buttonTheme: ButtonThemeData(buttonColor: Colors.blue),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
        ),
        scaffoldBackgroundColor: Colors.black, // Cor de fundo para o modo escuro
        buttonTheme: ButtonThemeData(buttonColor: Colors.blue[800]),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Corrigido para bodyLarge
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modo Noturno'),
          actions: [
            // Botão para alternar entre os modos
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = !_isDarkMode; // Alterna o tema
                });
              },
            ),
          ],
        ),
        body: _screens[_currentIndex], // Exibe a tela atual
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Atualiza o índice do BottomNavBar
            });
          },
        ),
      ),
    );
  }
}
