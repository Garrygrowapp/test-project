import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telecom_nativ/Pages/telecom.dart';
import 'Pages/Chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'MVNO project pattern';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      supportedLocales: [Locale('en', '')],
      home: const NavBarPage(initialPage: 'telecom',),
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key, required this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage>{
  String _currentPage = 'telecom';

  @override
  Widget build(BuildContext context) {
    final tabs ={
      'telecom': TestpageWidget(key: const ValueKey('telecom')),
      'Chat': ChatPageWidget(key: const ValueKey('2')),
      'Settings': TestpageWidget(key: const ValueKey('3')),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/telecom_Icon.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/Chat_Icon.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/settings_icon.png'),
            ),
            label: '',
           ),
        ],
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        iconSize: 16,
        selectedItemColor: const Color(0xFF0F1011),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFAEAFB1),
      ),
    );
  }
}
