import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/add_expense_screen.dart';
import 'screens/statistics_screen.dart';

void main() {
  runApp(const PocketPiggyApp());
}

class PocketPiggyApp extends StatelessWidget {
  const PocketPiggyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Piggy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() =>
      _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    AddExpenseScreen(),
    StatisticsScreen(),
  ];

  void _onNavigationItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pocket Piggy'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onNavigationItemSelected,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            selectedIcon: Icon(Icons.add_circle),
            label: 'Add Expense',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            selectedIcon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}