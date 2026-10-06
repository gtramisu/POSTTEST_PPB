import 'package:flutter/material.dart';
import 'widgets/cartProductCard.dart';

// StatefulWidget untuk halaman Cart
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

// State CartPage
class _CartPageState extends State<CartPage> {
  // State quantity
  int quantity = 1;

  // Harga produk
  final int productPrice = 89000;

  // Biaya pengiriman
  final int shippingCost = 10000;

  // Callback quantity
  void updateQuantity(int newQuantity) {
    setState(() {
      quantity = newQuantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Perhitungan subtotal
    final int subtotal =
        productPrice * quantity;

    // Perhitungan total
    final int total =
        subtotal + shippingCost;

    // State tombol
    final bool checkoutEnabled =
        quantity > 0;

    // Scaffold
    return Scaffold(
      backgroundColor:
      const Color(0xFFFFF8FA),

      // SafeArea
      body: SafeArea(
        child: SingleChildScrollView(
          // SingleChildScrollView
          child: Padding(
            // Padding
            padding:
            const EdgeInsets.fromLTRB(
              20,
              18,
              20,
              30,
            ),

            // Column
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                // ==================================================
                // CART HEADER
                // ==================================================

                // Row
                Row(
                  children: [
                    // Container
                    Container(
                      width: 45,
                      height: 45,

                      decoration: BoxDecoration(
                        color:
                        const Color(0xFFF7DDE5),
                        borderRadius:
                        BorderRadius.circular(
                          15,
                        ),
                      ),

                      // IconButton
                      child: IconButton(
                        // Navigator.pop
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        // Icon
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color:
                          Color(0xFF7D3049),
                        ),
                      ),
                    ),

                    // SizedBox
                    const SizedBox(width: 13),

                    // Column
                    const Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        // Text
                        Text(
                          'Your Cart',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight:
                            FontWeight.bold,
                            color:
                            Color(0xFF542333),
                          ),
                        ),

                        // SizedBox
                        SizedBox(height: 3),

                        // Text
                        Text(
                          'Your beauty picks ♡',
                          style: TextStyle(
                            fontSize: 11,
                            color:
                            Color(0xFF9A6677),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // SizedBox
                const SizedBox(height: 25),

                // ==================================================
                // CART PRODUCT
                // ==================================================

                // CartProductCard
                CartProductCard(
                  image: 'assets/lip_tint.jpg',
                  productName:
                  'Berry Kiss Lip Tint',
                  category: 'LIP TINT',
                  price: 'Rp89.000',
                  rating: '4.9',

                  // Callback
                  onQuantityChanged:
                  updateQuantity,
                ),

                // SizedBox
                const SizedBox(height: 27),

                // ==================================================
                // ORDER SUMMARY
                // ==================================================

                // Text
                const Text(
                  'Order Summary',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF542333),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 13),

                // Container
                Container(
                  width: double.infinity,
                  padding:
                  const EdgeInsets.all(19),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(23),

                    // BoxShadow
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x107D3049),
                        blurRadius: 13,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  // Column
                  child: Column(
                    children: [
                      // Row
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          // Text
                          Text(
                            'Berry Kiss × $quantity',
                            style:
                            const TextStyle(
                              fontSize: 12,
                              color:
                              Color(0xFF8E707B),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp$subtotal',
                            style:
                            const TextStyle(
                              fontSize: 12,
                              fontWeight:
                              FontWeight.w600,
                              color:
                              Color(0xFF542333),
                            ),
                          ),
                        ],
                      ),

                      // SizedBox
                      const SizedBox(height: 13),

                      // Row
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          // Text
                          const Text(
                            'Shipping',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                              Color(0xFF8E707B),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp$shippingCost',
                            style:
                            const TextStyle(
                              fontSize: 12,
                              fontWeight:
                              FontWeight.w600,
                              color:
                              Color(0xFF542333),
                            ),
                          ),
                        ],
                      ),

                      // SizedBox
                      const SizedBox(height: 14),

                      // Divider
                      const Divider(
                        color:
                        Color(0xFFF0DDE3),
                      ),

                      // SizedBox
                      const SizedBox(height: 10),

                      // Row
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          // Text
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              Color(0xFF542333),
                            ),
                          ),

                          // Text
                          Text(
                            'Rp$total',
                            style:
                            const TextStyle(
                              fontSize: 18,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              Color(0xFF8B3A52),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // SizedBox
                const SizedBox(height: 19),

                // ==================================================
                // LOVE NOTE
                // ==================================================

                // Container
                Container(
                  width: double.infinity,
                  padding:
                  const EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color:
                    const Color(0xFFF8DCE5),
                    borderRadius:
                    BorderRadius.circular(19),
                  ),

                  // Row
                  child: Row(
                    children: [
                      // Icon
                      const Icon(
                        Icons.favorite,
                        color:
                        Color(0xFF8B3A52),
                        size: 20,
                      ),

                      // SizedBox
                      const SizedBox(width: 10),

                      // Expanded
                      const Expanded(
                        child: Text(
                          'Every KISÉ order is packed with love ♡',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight:
                            FontWeight.w600,
                            color:
                            Color(0xFF713047),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SizedBox
                const SizedBox(height: 21),

                // ==================================================
                // CHECKOUT
                // ==================================================

                // SizedBox
                SizedBox(
                  width: double.infinity,
                  height: 53,

                  // ElevatedButton
                  child: ElevatedButton(
                    // State ElevatedButton
                    onPressed: checkoutEnabled
                        ? () {}
                        : null,

                    // Button Style
                    style:
                    ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color(0xFF8B3A52),
                      disabledBackgroundColor:
                      const Color(0xFFD9B8C3),
                      foregroundColor:
                      Colors.white,
                      elevation: 0,

                      // RoundedRectangleBorder
                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(
                          17,
                        ),
                      ),
                    ),

                    // Text
                    child: Text(
                      checkoutEnabled
                          ? 'Checkout • Rp$total ♡'
                          : 'Cart is Empty',
                      style:
                      const TextStyle(
                        fontSize: 13,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 15),

                // Center
                const Center(
                  child: Text(
                    'secure beauty checkout · KISÉ',
                    style: TextStyle(
                      fontSize: 9,
                      letterSpacing: 0.7,
                      color:
                      Color(0xFFB08A98),
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