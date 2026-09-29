import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold
      backgroundColor: const Color(0xFFFFF7F9),

      // SafeArea
      body: SafeArea(
        child: SingleChildScrollView(
          // SingleChildScrollView
          child: Padding(
            // Padding
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 30),

            // Column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Row
                Row(
                  children: [

                    // Container
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7DDE5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      // IconButton
                      child: IconButton(
                        // Navigator.pop
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        // Icon
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF7D3049),
                        ),
                      ),
                    ),

                    // SizedBox
                    const SizedBox(width: 13),

                    // Column
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text
                        Text(
                          'Your Cart',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF542333),
                          ),
                        ),

                        // SizedBox
                        SizedBox(height: 3),

                        // Text
                        Text(
                          'Your beauty picks ♡',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9A6677),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // SizedBox
                const SizedBox(height: 25),

                // Container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
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
                    children: [

                      // Container
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF0F4),
                          borderRadius: BorderRadius.circular(17),
                        ),

                        // ClipRRect
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),

                          // Image.asset
                          child: Image.asset(
                            'assets/lip_tint.jpg',
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

                            // Text
                            const Text(
                              'Berry Kiss Lip Tint',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF35212A),
                              ),
                            ),

                            // SizedBox
                            const SizedBox(height: 6),

                            // Text
                            const Text(
                              'Lip Tint',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9A536A),
                              ),
                            ),

                            // SizedBox
                            const SizedBox(height: 8),

                            // Text
                            const Text(
                              'Rp89.000',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF9B3855),
                              ),
                            ),

                            // SizedBox
                            const SizedBox(height: 6),

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
                                const Text(
                                  '4.9 / 5.0',
                                  style: TextStyle(
                                    fontSize: 10,
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
                ),

                // SizedBox
                const SizedBox(height: 22),

                // Text
                const Text(
                  'Order Summary',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF542333),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 13),

                // Container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),

                    // BoxShadow
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x107D3049),
                        blurRadius: 12,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  // Column
                  child: Column(
                    children: [

                      // Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          // Text
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF8E707B),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp89.000',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF542333),
                            ),
                          ),
                        ],
                      ),

                      // SizedBox
                      const SizedBox(height: 12),

                      // Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          // Text
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF8E707B),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp10.000',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF542333),
                            ),
                          ),
                        ],
                      ),

                      // SizedBox
                      const SizedBox(height: 14),

                      // Divider
                      Divider(
                        color: Color(0xFFF0DDE3),
                      ),

                      // SizedBox
                      const SizedBox(height: 10),

                      // Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          // Text
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF542333),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp99.000',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8B3A52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // SizedBox
                const SizedBox(height: 20),

                // Container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8DCE5),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  // Row
                  child: Row(
                    children: [
                      // Icon
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFF8B3A52),
                        size: 20,
                      ),

                      // SizedBox
                      const SizedBox(width: 10),

                      // Expanded
                      Expanded(
                        child: Text(
                          'Every KISÉ order is packed with love ♡',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF713047),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox
                const SizedBox(height: 20),

                // SizedBox
                SizedBox(
                  width: double.infinity,
                  height: 52,

                  // ElevatedButton
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8B3A52),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),

                    // Text
                    child: const Text(
                      'Checkout ♡',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}