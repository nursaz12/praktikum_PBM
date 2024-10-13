import 'package:flutter/material.dart';

class Barang{
  final Image produk;
  final Text nama;
  Barang ({required this.produk, required this.nama});
}
//#TODO_9 Atur nama statefulWidget class untuk bottom navbar kedua
class NamaBottomNavBar2 extends StatefulWidget {
  const NamaBottomNavBar2({super.key});

  @override
  State<NamaBottomNavBar2> createState() => _NamaBottomNavBar2State();
}

class _NamaBottomNavBar2State extends State<NamaBottomNavBar2> {
  final List<Barang> produkView = [
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/bjtidur.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Kue", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/celana.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Celana", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/dress.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Dress", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/kamera.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Kamera", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/kerudung.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Kerudung", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/kue.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Kue", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/laptop.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Laptop", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/makanan.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Makanan", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/minuman.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Minuman", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
    Barang(
      produk: const Image(
        width: 65,
        height: 65,
        image: AssetImage("assets/images/sepatu.jpeg"),
        fit: BoxFit.cover,
      ), 
      nama: const Text("Sepatu", style: TextStyle(fontWeight: FontWeight.bold),)
    ),
  ];
  //#TODO_10 Bangun tampilan pada bottom navbar kedua berbentuk row dan column dengan tampilan 2 baris dan minimal 5 kolom
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Membuat 5 item di dalam baris pertama
                buildItem(produkView[0].nama, produkView[0].produk),
                const SizedBox(
                  width: 10,
                ),
                buildItem(produkView[1].nama, produkView[1].produk),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara baris pertama dan kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Membuat 5 item di dalam baris pertama
                buildItem(produkView[2].nama, produkView[2].produk),
                const SizedBox(
                  width: 10,
                ),
                buildItem(produkView[3].nama, produkView[3].produk),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara baris pertama dan kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Membuat 5 item di dalam baris pertama
                buildItem(produkView[4].nama, produkView[4].produk),
                const SizedBox(
                  width: 10,
                ),
                buildItem(produkView[5].nama, produkView[5].produk),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara baris pertama dan kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Membuat 5 item di dalam baris pertama
                buildItem(produkView[6].nama, produkView[6].produk),
                const SizedBox(
                  width: 10,
                ),
                buildItem(produkView[7].nama, produkView[7].produk),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara baris pertama dan kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Membuat 5 item di dalam baris pertama
                buildItem(produkView[8].nama, produkView[8].produk),
                const SizedBox(
                  width: 10,
                ),
                buildItem(produkView[9].nama, produkView[9].produk),
              ],
            ),
            const SizedBox(height: 20), // Jarak antara baris pertama dan kedua
          ],
        ),
      ),
    );
  }

  // Function untuk membangun item dalam Row
  Widget buildItem(Text label,  Image profil) {
    return Container(
      width: 175,
      height: 125,
      decoration: BoxDecoration(
        color: const Color.fromARGB(153, 131, 159, 207),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: profil,
            ),
            const SizedBox(height: 8),
            label,
          ],
        ),
      ),
    );
  }
}