import 'package:flutter/material.dart';

// StatelessWidget untuk item kategori
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
    // Container
    return Container(
      height: 108,
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 8,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),

        // BoxShadow
        boxShadow: const [
          BoxShadow(
            color: Color(0x107D3049),
            blurRadius: 11,
            offset: Offset(0, 5),
          ),
        ],
      ),

      // Column
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          // Container
          Container(
            width: 44,
            height: 44,

            decoration: const BoxDecoration(
              color: Color(0xFFF9E1E8),
              shape: BoxShape.circle,
            ),

            // Icon
            child: Icon(
              icon,
              color: const Color(0xFF8B3A52),
              size: 21,
            ),
          ),

          // SizedBox
          const SizedBox(height: 9),

          // Text
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF663246),
            ),
          ),
        ],
      ),
    );
  }
}