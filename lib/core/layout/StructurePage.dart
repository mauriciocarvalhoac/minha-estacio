import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minha_estacio/screen/HomePage.dart';

class StructurePage extends StatefulWidget {
  const StructurePage({super.key});

  @override
  State<StructurePage> createState() => _StructurePageState();
}

class _StructurePageState extends State<StructurePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<Widget> _widgetOptions = <Widget>[
      HomePage(title: 'Home'),
      // CarreirasPage(title: 'Carreiras'),
      // FinanceiroPage(title: 'Financeiro'),
      // SuportePage(title: 'Suporte'),
      // PerfilPage(title: 'Perfil'),
    ];
    return Scaffold(
      body: _widgetOptions.elementAt(currentPageIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        backgroundColor: Colors.white,
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(20, 75, 201, 1),
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.rocket_outlined,
              color: Color.fromRGBO(20, 75, 201, 1),
            ),
            label: 'Carreiras',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.attach_money,
              color: Color.fromRGBO(20, 75, 201, 1),
            ),
            label: 'Financeiro',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.contact_support_outlined,
              color: Color.fromRGBO(20, 75, 201, 1),
            ),
            label: 'Suporte',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_2_outlined,
              color: Color.fromRGBO(20, 75, 201, 1),
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
