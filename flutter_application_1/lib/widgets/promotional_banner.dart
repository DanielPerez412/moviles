import 'package:flutter/material.dart';

class BannerPromocional extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color backgroundColor;

  const BannerPromocional({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description, style: const TextStyle(color: Colors.white)),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: backgroundColor,
                  ),
                  child: const Text('Ver más'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Icon(icon, color: Color(0xffffffff), size: 64),
        ],
      ),
    );
  }
}
