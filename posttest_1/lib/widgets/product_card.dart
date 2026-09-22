import 'package:flutter/material.dart';

// widget untuk menampilkan kartu produk
class ProductCard extends StatelessWidget {
  final String label;
  final String name;
  final String price;
  final String rating;
  final IconData icon;
  final Color backgroundColor;

  const ProductCard({
    super.key,
    required this.label,
    required this.name,
    required this.price,
    required this.rating,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // container untuk membungkus kartu produk
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),

      // row untuk menyusun isi kartu produk
      child: Row(
        children: [
          // container untuk area visual produk
          Container(
            width: 92,
            height: 105,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(18),
            ),

            // column untuk menyusun ikon dan label produk
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // icon untuk menampilkan ilustrasi produk
                Icon(
                  icon,
                  size: 42,
                  color: const Color(0xFF8B3A52),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 5,
                ),

                // text untuk label produk
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                    color: Color(0xFF8B3A52),
                  ),
                ),
              ],
            ),
          ),

          // sizedbox untuk memberi jarak
          const SizedBox(
            width: 15,
          ),

          // expanded untuk memberi ruang pada informasi produk
          Expanded(
            // column untuk menyusun informasi produk
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // text untuk nama produk
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF38242B),
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 6,
                ),

                // text untuk harga produk
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9B4E68),
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 8,
                ),

                // row untuk menampilkan rating
                Row(
                  children: [
                    // icon untuk menampilkan bintang
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xFFD59A38),
                    ),

                    // sizedbox untuk memberi jarak
                    const SizedBox(
                      width: 5,
                    ),

                    // text untuk menampilkan rating dan review
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF8A747A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // icon untuk tombol favorit
          const Icon(
            Icons.favorite_border,
            size: 24,
            color: Color(0xFFB45572),
          ),
        ],
      ),
    );
  }
}