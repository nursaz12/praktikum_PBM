import 'package:flutter/material.dart';

//#TODO_11 Atur nama statefulWidget class untuk bottom navbar ketiga
class NamaBottomNavBar3 extends StatefulWidget {
  const NamaBottomNavBar3({super.key});

  @override
  State<NamaBottomNavBar3> createState() => _NamaBottomNavBar3State();
}

class _NamaBottomNavBar3State extends State<NamaBottomNavBar3> {
  //#TODO_12 Bangun tampilan pada bottom navbar ketiga 
  // berbentuk halaman profil berisi foto pribadi yang dibungkus dengan frame lingkaran, nama lengkap, dan email UNSIKA
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Foto profil yang dibungkus dengan frame lingkaran
          ClipOval(
            child: Image(
              width: 180,
              height: 180,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/me.jpeg")
            ),
          ),
          SizedBox(height: 20), // Jarak antara foto dan nama
          Text(
            'Nur Salamah Azzahrah', // Nama lengkap
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10), // Jarak antara nama dan email
          Text(
            '2210631170095@student.unsika.ac.id', // Email UNSIKA
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}