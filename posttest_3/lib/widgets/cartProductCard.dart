import 'package:flutter/material.dart';

// StatefulWidget untuk produk di dalam Cart
class CartProductCard extends StatefulWidget {
  final String image;
  final String productName;
  final String category;
  final String price;
  final String rating;

  // Callback quantity
  final ValueChanged<int> onQuantityChanged;

  const CartProductCard({
    super.key,
    required this.image,
    required this.productName,
    required this.category,
    required this.price,
    required this.rating,
    required this.onQuantityChanged,
  });

  @override
  State<CartProductCard> createState() =>
      _CartProductCardState();
}

// State CartProductCard
class _CartProductCardState
    extends State<CartProductCard> {
  // State quantity
  int quantity = 1;

  // initState
  @override
  void initState() {
    super.initState();

    // State awal quantity
    quantity = 1;
  }

  // didUpdateWidget
  @override
  void didUpdateWidget(
      covariant CartProductCard oldWidget,
      ) {
    super.didUpdateWidget(oldWidget);

    // Mengecek perubahan widget
    if (oldWidget.productName !=
        widget.productName) {
      setState(() {
        quantity = 1;
      });
    }
  }

  // Menambah quantity
  void increaseQuantity() {
    if (quantity < 10) {
      setState(() {
        quantity++;
      });

      // Callback
      widget.onQuantityChanged(quantity);
    }
  }

  // Mengurangi quantity
  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });

      // Callback
      widget.onQuantityChanged(quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Container
    return Container(
      padding: const EdgeInsets.all(13),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(22),

        // BoxShadow
        boxShadow: const [
          BoxShadow(
            color: Color(0x107D3049),
            blurRadius: 13,
            offset: Offset(0, 5),
          ),
        ],
      ),

      // Row
      child: Row(
        children: [
          // Container gambar
          Container(
            width: 82,
            height: 92,

            decoration: BoxDecoration(
              color: const Color(0xFFFFF1F5),
              borderRadius:
              BorderRadius.circular(16),
            ),

            // ClipRRect
            child: ClipRRect(
              borderRadius:
              BorderRadius.circular(16),

              // Image.asset
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // SizedBox
          const SizedBox(width: 12),

          // Expanded
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                // Text
                Text(
                  widget.category,
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Color(0xFFA05F75),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 5),

                // Text
                Text(
                  widget.productName,
                  maxLines: 2,
                  overflow:
                  TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF35212A),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 6),

                // Text
                Text(
                  widget.price,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9B3855),
                  ),
                ),

                // SizedBox
                const SizedBox(height: 5),

                // Row
                Row(
                  children: [
                    // Icon
                    const Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xFFE0A400),
                    ),

                    // SizedBox
                    const SizedBox(width: 3),

                    // Text
                    Text(
                      widget.rating,
                      style: const TextStyle(
                        fontSize: 9,
                        color:
                        Color(0xFF927B84),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // SizedBox
          const SizedBox(width: 8),

          // Column quantity
          Column(
            children: [
              // Text
              const Text(
                'QTY',
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Color(0xFFA47787),
                ),
              ),

              // SizedBox
              const SizedBox(height: 5),

              // Container
              Container(
                decoration: BoxDecoration(
                  color:
                  const Color(0xFFF9E4EB),
                  borderRadius:
                  BorderRadius.circular(13),
                ),

                // Row
                child: Row(
                  mainAxisSize:
                  MainAxisSize.min,
                  children: [
                    // IconButton
                    IconButton(
                      onPressed:
                      quantity > 1
                          ? decreaseQuantity
                          : null,

                      // Icon
                      icon: const Icon(
                        Icons.remove,
                        size: 15,
                        color:
                        Color(0xFF8B3A52),
                      ),

                      padding: EdgeInsets.zero,
                      constraints:
                      const BoxConstraints(
                        minWidth: 30,
                        minHeight: 34,
                      ),
                    ),

                    // Text
                    Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight:
                        FontWeight.bold,
                        color:
                        Color(0xFF542333),
                      ),
                    ),

                    // IconButton
                    IconButton(
                      onPressed:
                      quantity < 10
                          ? increaseQuantity
                          : null,

                      // Icon
                      icon: const Icon(
                        Icons.add,
                        size: 15,
                        color:
                        Color(0xFF8B3A52),
                      ),

                      padding: EdgeInsets.zero,
                      constraints:
                      const BoxConstraints(
                        minWidth: 30,
                        minHeight: 34,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}