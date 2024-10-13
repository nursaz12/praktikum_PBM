import 'package:flutter/material.dart';
//#TODO_13 Import 3 halaman navbar yang telah dibuat
import 'navbarpage1.dart' as home1;
import 'navbarpage2.dart' as home2;
import 'navbarpage3.dart' as home3;
//#TODO_14 Buat function main dan jalankan aplikasi
void main(){
  runApp(const MyApp());
}

//#TODO_1 Atur nama statelessWidget Class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //#TODO_3 Bangun MaterialApp dan Arahkan property home ke statefulWidget Class
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BelajarNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//#TODO_2 Atur nama statefulWidget Class
class BelajarNavBar extends StatefulWidget {
  const BelajarNavBar({super.key});

  @override
  State<BelajarNavBar> createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavBar = 0;

  final pages = [
    const home1.Navbarhome(),
    const home2.NamaBottomNavBar2(),
    const home3.NamaBottomNavBar3(),
  ];

  void _changeSelectedNavbar(int index){
    setState(() {
      _selectedNavBar = index;
    });
  }

  //#TODO_4 Bangun Scaffold
  @override
  Widget build(BuildContext context) {
    //#TODO_5 Buat tampilan AppBar
    //#TODO_6 Buat tampilan BottomNavBar dengan 3 navigation bar
    return Scaffold(
      appBar: AppBar(
        title: const Text("My E-Commerce", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 53, 84, 138),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.white,),
          ), 
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 12, 8),
            child: Icon(Icons.more_vert, color: Colors.white,),
          )
        ],
      ),
      body: pages[_selectedNavBar],
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedNavBar,
        selectedItemColor: const Color.fromARGB(255, 53, 84, 138),
        showUnselectedLabels: true,
        onTap: _changeSelectedNavbar,
        ),
      );
  }
}