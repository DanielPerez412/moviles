import 'package:flutter/material.dart';

class CarruselImagenes extends StatelessWidget {
  const CarruselImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _TarjetaCarrusel(
              title: 'Tetto',
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWKLKx58Ic-JcJVmtTR2Vo0vyLa1MteUqx20-_F1oedwb-jPp0epqQdPA&s=10'),
          _TarjetaCarrusel(
              title: 'momazos teodoro',
              imageUrl:
                  'https://p16-common-sign.tiktokcdn-us.com/tos-maliva-avt-0068/8fe826fb8967ca0df0b75aed59c7b6cf~tplv-tiktokx-cropcenter:720:720.jpeg?dr=9640&refresh_token=0bd7c05d&x-expires=1791846000&x-signature=XQT8KdeVVYUM8f7Z2Xh1LdYLTPM%3D&t=4d5b0474&ps=13740610&shp=a5d48078&shcp=81f88b70&idc=useast8'),
          _TarjetaCarrusel(
              title: '2013',
              imageUrl:
                  'https://img.wattpad.com/cover/122076424-288-k792180.jpg'),
          _TarjetaCarrusel(
              title: 'grasosos',
              imageUrl:
                  'https://i.pinimg.com/236x/9c/ef/e2/9cefe29587187076b03079779471e909.jpg'),
        ],
      ),
    );
  }
}

class _TarjetaCarrusel extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _TarjetaCarrusel({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color.fromARGB(255, 41, 82, 194), width: 2),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          onError: (error, stackTrace) {},
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          shadows: [Shadow(color: Colors.black87, blurRadius: 6)],
        ),
      ),
    );
  }
}
