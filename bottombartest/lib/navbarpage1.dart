import 'package:flutter/material.dart';

//#TODO_7 Atur nama statefulWidget class untuk bottom navbar pertama
class Navbarhome extends StatefulWidget {
  const Navbarhome({super.key});

  @override
  State<Navbarhome> createState() => _NavbarhomeState();
}

class _NavbarhomeState extends State<Navbarhome> {
  //#TODO_8 Bangun tampilan pada bottom navbar pertama berbentuk listtile minimal 15 list
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.home),
          title: Text('Item ${index + 1}'),
        );
      },
    );
  }
}