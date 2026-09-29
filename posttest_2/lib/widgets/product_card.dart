import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String category;
  final String name;
  final String price;
  final String rating;

  const ProductCard({
    super.key,
    required this.image,
    required this.category,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container
      padding: const EdgeInsets.all(13),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),

        // BoxShadow
        boxShadow: const [
          BoxShadow(
            color: Color(0x127D3049),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),

      // Row
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // Container untuk gambar produk
          Container(
            width: 124,
            height: 124,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: const Color(0xFFFFF1F5),
            ),

            // ClipRRect
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),

              // Image.asset
              child: Image.asset(
                image,
                width: 124,
                height: 124,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SizedBox
          const SizedBox(width: 14),

          // Expanded
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Expanded
                    Expanded(
                      child: Text(
                        category,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9A536A),
                        ),
                      ),
                    ),

                    // Container
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF0CC),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      // Row
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Icon
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Color(0xFFD89B00),
                          ),

                          // SizedBox
                          const SizedBox(width: 3),

                          // Text
                          Text(
                            rating,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF856A22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // SizedBox
                const SizedBox(height: 9),

                // Text
                Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF35212A),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 9),

                // Text
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9B3855),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 8),

                // Row
                Row(
                  children: [
                    // Icon
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xFFE0A400),
                    ),

                    // SizedBox
                    const SizedBox(width: 4),

                    // Text
                    Text(
                      '$rating / 5.0',
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF927B84),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}