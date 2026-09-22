import 'package:flutter/material.dart';

// widget untuk menampilkan kategori produk
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // container untuk membungkus kategori
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      // column untuk menyusun ikon dan nama kategori
      child: Column(
        children: [
          // container untuk membungkus ikon kategori
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xFFFFE9EF),
              borderRadius: BorderRadius.circular(16),
            ),

            // icon untuk menampilkan ikon kategori
            child: Icon(
              icon,
              size: 27,
              color: const Color(0xFF9B4E68),
            ),
          ),

          // sizedbox untuk memberi jarak
          const SizedBox(
            height: 11,
          ),

          // text untuk nama kategori
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xFF49333A),
            ),
          ),
        ],
      ),
    );
  }
}