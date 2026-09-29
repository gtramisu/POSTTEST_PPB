import 'package:flutter/material.dart';

import 'cartPage.dart';
import 'widgets/category_item.dart';
import 'widgets/product_card.dart';

void main() {
  runApp(const KiseApp());
}

// MaterialApp
class KiseApp extends StatelessWidget {
  const KiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KISÉ',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B3A52),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF7F9),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// StatefulWidget untuk mengatur NavigationBar
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void openCart() {
    setState(() {
      selectedIndex = 1;
    });

    // Navigator.push
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CartPage(),
      ),
    ).then((_) {
      if (mounted) {
        setState(() {
          selectedIndex = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold

      // SafeArea
      body: SafeArea(
        child: HomeContent(),
      ),

      // NavigationBar
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFFFE8EF),
        indicatorColor: const Color(0xFFF6C6D6),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          if (index == 0) {
            setState(() {
              selectedIndex = 0;
            });
          } else {
            openCart();
          }
        },
        destinations: const [
          // NavigationBarDestination
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          // NavigationBarDestination
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

// Halaman utama aplikasi KISÉ
class HomeContent extends StatelessWidget {
  HomeContent({super.key});

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/lip_tint.jpg',
      'category': 'Lip Tint',
      'name': 'Berry Kiss Lip Tint',
      'price': 'Rp89.000',
      'rating': '4.9',
    },
    {
      'image': 'assets/lipstick.jpg',
      'category': 'Lipstick',
      'name': 'Rosy Blush Lipstick',
      'price': 'Rp109.000',
      'rating': '4.8',
    },
    {
      'image': 'assets/lip_gloss.jpg',
      'category': 'Lip Gloss',
      'name': 'Peach Glow Lip Gloss',
      'price': 'Rp79.000',
      'rating': '4.9',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // SingleChildScrollView
      child: Padding(
        // Padding
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 30),
        child: Column(
          // Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text
                    const Text(
                      'Hello, Beauty ♡',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF9A6677),
                      ),
                    ),

                    // SizedBox
                    const SizedBox(height: 4),

                    // Text
                    const Text(
                      'KISÉ',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Color(0xFF7D3049),
                      ),
                    ),
                  ],
                ),

                // Container
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8DCE5),
                    shape: BoxShape.circle,

                    // BoxShadow
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x227D3049),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),

                  // Center
                  child: const Center(
                    // Icon
                    child: Icon(
                      Icons.person_outline,
                      color: Color(0xFF7D3049),
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 20),

            // TextField
            TextField(
              decoration: InputDecoration(
                hintText: 'Search your favorite lip...',
                hintStyle: const TextStyle(
                  color: Color(0xFFB993A0),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xFF8B3A52),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            // SizedBox
            const SizedBox(height: 20),

            // =========================
            // PROMO BANNER
            // =========================

            // SizedBox
            SizedBox(
              height: 190,

              // Stack
              child: Stack(
                children: [

                  // Positioned
                  Positioned.fill(
                    // ClipRRect
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),

                      // Image.asset
                      child: Image.asset(
                        'assets/header.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Positioned
                  Positioned.fill(
                    // Container
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.black.withOpacity(0.08),
                      ),
                    ),
                  ),

                  // Positioned
                  Positioned(
                    left: 20,
                    top: 22,

                    // Column
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text
                        const Text(
                          'KISÉ BEAUTY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),

                        // SizedBox
                        const SizedBox(height: 7),

                        // Text
                        const Text(
                          'Find your\nperfect lip color.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            height: 1.15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Positioned
                  Positioned(
                    right: 18,
                    bottom: 18,

                    // Container
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),

                        // BoxShadow
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x337D3049),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),

                      // Text
                      child: const Text(
                        'UP TO 30% OFF',
                        style: TextStyle(
                          color: Color(0xFF8B3A52),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox
            const SizedBox(height: 25),

            // =========================
            // CATEGORIES
            // =========================

            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF542333),
                  ),
                ),

                // Text
                Text(
                  'See all',
                  style: TextStyle(
                    color: const Color(0xFF8B3A52),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 13),

            // Row
            Row(
              children: [
                // Expanded
                Expanded(
                  child: CategoryItem(
                    icon: Icons.water_drop_outlined,
                    title: 'Tint',
                  ),
                ),

                // SizedBox
                const SizedBox(width: 10),

                // Expanded
                Expanded(
                  child: CategoryItem(
                    icon: Icons.favorite_border,
                    title: 'Lipstick',
                  ),
                ),

                // SizedBox
                const SizedBox(width: 10),

                // Expanded
                Expanded(
                  child: CategoryItem(
                    icon: Icons.auto_awesome_outlined,
                    title: 'Gloss',
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 28),

            // =========================
            // BEST SELLERS
            // =========================

            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text
                const Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF542333),
                  ),
                ),

                // Icon
                const Icon(
                  Icons.local_fire_department_outlined,
                  color: Color(0xFFD4778F),
                  size: 22,
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 13),

            // Column
            Column(
              children: products.map((product) {
                return Padding(
                  // Padding
                  padding: const EdgeInsets.only(bottom: 14),

                  // ProductCard
                  child: ProductCard(
                    image: product['image'],
                    category: product['category'],
                    name: product['name'],
                    price: product['price'],
                    rating: product['rating'],
                  ),
                );
              }).toList(),
            ),

            // SizedBox
            const SizedBox(height: 8),

            // =========================
            // KISÉ BEAUTY NOTE
            // =========================

            // Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFCE6ED),
                    Color(0xFFF8D8E3),
                  ],
                ),
                borderRadius: BorderRadius.circular(24),

                // BoxShadow
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x187D3049),
                    blurRadius: 14,
                    offset: Offset(0, 6),
                  ),
                ],
              ),

              // Column
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Row
                  Row(
                    children: [
                      // Container
                      Container(
                        width: 42,
                        height: 42,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),

                        // Icon
                        child: const Icon(
                          Icons.auto_awesome,
                          color: Color(0xFF8B3A52),
                          size: 21,
                        ),
                      ),

                      // SizedBox
                      const SizedBox(width: 12),

                      // Column
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text
                          Text(
                            'KISÉ BEAUTY NOTE',
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8B3A52),
                            ),
                          ),

                          // SizedBox
                          SizedBox(height: 3),

                          // Text
                          Text(
                            'A little color, a little confidence.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6D3548),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // SizedBox
                  const SizedBox(height: 18),

                  // Row
                  Row(
                    children: [
                      // Expanded
                      Expanded(
                        child: _BeautyFeature(
                          icon: Icons.water_drop_outlined,
                          title: 'Soft Finish',
                          subtitle: 'Comfy all day',
                        ),
                      ),

                      // SizedBox
                      const SizedBox(width: 8),

                      // Expanded
                      Expanded(
                        child: _BeautyFeature(
                          icon: Icons.palette_outlined,
                          title: 'Pretty Shades',
                          subtitle: 'For every mood',
                        ),
                      ),

                      // SizedBox
                      const SizedBox(width: 8),

                      // Expanded
                      Expanded(
                        child: _BeautyFeature(
                          icon: Icons.favorite_border,
                          title: 'KISÉ Love',
                          subtitle: 'Made for you',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // SizedBox
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// Widget kecil untuk bagian beauty feature
class _BeautyFeature extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _BeautyFeature({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.72),
        borderRadius: BorderRadius.circular(16),
      ),

      // Column
      child: Column(
        children: [
          // Icon
          Icon(
            icon,
            size: 20,
            color: const Color(0xFF8B3A52),
          ),

          // SizedBox
          const SizedBox(height: 7),

          // Text
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6D3045),
            ),
          ),

          // SizedBox
          const SizedBox(height: 3),

          // Text
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 9,
              color: Color(0xFF9C7180),
            ),
          ),
        ],
      ),
    );
  }
}