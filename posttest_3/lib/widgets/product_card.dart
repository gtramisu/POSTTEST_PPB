import 'package:flutter/material.dart';

// StatelessWidget untuk kartu produk
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
    // Container
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(23),

        // BoxShadow
        boxShadow: const [
          BoxShadow(
            color: Color(0x107D3049),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),

      // Row
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.center,
        children: [
          // Container untuk gambar
          Container(
            width: 118,
            height: 130,

            decoration: BoxDecoration(
              color: const Color(0xFFFFF1F5),
              borderRadius:
              BorderRadius.circular(18),
            ),

            // ClipRRect
            child: ClipRRect(
              borderRadius:
              BorderRadius.circular(18),

              // Image.asset
              child: Image.asset(
                image,
                width: 118,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SizedBox
          const SizedBox(width: 13),

          // Expanded
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                // Row
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    // Expanded
                    Expanded(
                      child: Text(
                        category,
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight:
                          FontWeight.bold,
                          letterSpacing: 1,
                          color:
                          Color(0xFFA05F75),
                        ),
                      ),
                    ),

                    // Container
                    Container(
                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                        color:
                        const Color(0xFFFFF2D5),
                        borderRadius:
                        BorderRadius.circular(
                          20,
                        ),
                      ),

                      // Row
                      child: Row(
                        mainAxisSize:
                        MainAxisSize.min,
                        children: [
                          // Icon
                          const Icon(
                            Icons.star,
                            size: 12,
                            color:
                            Color(0xFFD89B00),
                          ),

                          // SizedBox
                          const SizedBox(width: 3),

                          // Text
                          Text(
                            rating,
                            style:
                            const TextStyle(
                              fontSize: 9,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              Color(0xFF856A22),
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
                  overflow:
                  TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF35212A),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 10),

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
                      size: 14,
                      color: Color(0xFFE0A400),
                    ),

                    // SizedBox
                    const SizedBox(width: 4),

                    // Text
                    Text(
                      '$rating / 5.0',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Color(0xFF927B84),
                      ),
                    ),

                    // SizedBox
                    const SizedBox(width: 7),

                    // Container
                    Container(
                      width: 4,
                      height: 4,
                      decoration:
                      const BoxDecoration(
                        color:
                        Color(0xFFD7A5B4),
                        shape: BoxShape.circle,
                      ),
                    ),

                    // SizedBox
                    const SizedBox(width: 7),

                    // Text
                    const Text(
                      'Loved',
                      style: TextStyle(
                        fontSize: 10,
                        color:
                        Color(0xFF927B84),
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