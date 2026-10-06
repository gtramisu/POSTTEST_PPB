import 'package:flutter/material.dart';
import 'cartPage.dart';
import 'widgets/category_item.dart';
import 'widgets/product_card.dart';

// MaterialApp untuk aplikasi utama KISÉ
void main() {
  runApp(const KiseApp());
}

// StatelessWidget untuk aplikasi KISÉ
class KiseApp extends StatelessWidget {
  const KiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KISÉ',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B3A52),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF8FA),
      ),
      // HomePage
      home: const HomePage(),
    );
  }
}

// StatefulWidget untuk halaman Home
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// State HomePage
class _HomePageState extends State<HomePage> {
  // State NavigationBar
  int selectedIndex = 0;

  // Membuka CartPage
  void openCart() {
    setState(() {
      selectedIndex = 1;
    });

    // Navigator
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CartPage(),
      ),
    ).then((value) {
      setState(() {
        selectedIndex = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      // SafeArea
      body: const SafeArea(
        child: HomeContent(),
      ),

      // NavigationBar
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        elevation: 3,
        selectedIndex: selectedIndex,

        // State NavigationBar
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });

          // if
          if (index == 1) {
            openCart();
          }
        },

        destinations: const [
          // NavigationDestination
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),

          // NavigationDestination
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

// StatefulWidget untuk isi Home
class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

// State HomeContent
class _HomeContentState extends State<HomeContent> {
  // State pencarian
  String searchText = '';

  // Data produk
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/lip_tint.jpg',
      'category': 'LIP TINT',
      'name': 'Berry Kiss Lip Tint',
      'price': 'Rp89.000',
      'rating': '4.9',
    },
    {
      'image': 'assets/lipstick.jpg',
      'category': 'LIPSTICK',
      'name': 'Rosy Blush Lipstick',
      'price': 'Rp109.000',
      'rating': '4.8',
    },
    {
      'image': 'assets/lip_gloss.jpg',
      'category': 'LIP GLOSS',
      'name': 'Peach Glow Lip Gloss',
      'price': 'Rp79.000',
      'rating': '4.9',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Keyword pencarian
    final String keyword = searchText.toLowerCase();

    // Filter produk berdasarkan pencarian
    final List<Map<String, dynamic>> filteredProducts =
    products.where((product) {
      final String productName =
      product['name'].toString().toLowerCase();

      final String productCategory =
      product['category'].toString().toLowerCase();

      return productName.contains(keyword) ||
          productCategory.contains(keyword);
    }).toList();

    return SingleChildScrollView(
      // SingleChildScrollView
      child: Padding(
        // Padding
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
          20,
          30,
        ),

        // Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ==================================================
            // HEADER
            // ==================================================

            // Row
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                // Column
                const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text(
                      'HELLO, BEAUTY ♡',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        color: Color(0xFFA06C7E),
                      ),
                    ),

                    // SizedBox
                    SizedBox(height: 4),

                    // Text
                    Text(
                      'KISÉ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5,
                        color: Color(0xFF542333),
                      ),
                    ),
                  ],
                ),

                // Container
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8DCE5),
                    borderRadius:
                    BorderRadius.circular(18),
                  ),

                  // Icon
                  child: const Icon(
                    Icons.face_retouching_natural,
                    color: Color(0xFF8B3A52),
                    size: 25,
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 20),

            // ==================================================
            // SEARCH
            // ==================================================

            // TextField
            TextField(
              // State TextField
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },

              decoration: InputDecoration(
                hintText:
                'Search your lip favorite...',
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFFB99AA6),
                ),

                // Icon
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF8B3A52),
                  size: 22,
                ),

                // IconButton
                suffixIcon:
                searchText.isNotEmpty
                    ? IconButton(
                  onPressed: () {
                    setState(() {
                      searchText = '';
                    });
                  },

                  // Icon
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 18,
                    color:
                    Color(0xFF8B3A52),
                  ),
                )
                    : null,

                filled: true,
                fillColor: Colors.white,

                contentPadding:
                const EdgeInsets.symmetric(
                  vertical: 16,
                ),

                // OutlineInputBorder
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(19),
                  borderSide: BorderSide.none,
                ),

                // OutlineInputBorder
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(19),
                  borderSide: const BorderSide(
                    color: Color(0xFFF3E2E7),
                  ),
                ),
              ),
            ),

            // SizedBox
            const SizedBox(height: 24),

            // ==================================================
            // FULL IMAGE HERO
            // ==================================================

            // Container
            Container(
              width: double.infinity,
              height: 225,

              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(28),

                // BoxShadow
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x187D3049),
                    blurRadius: 18,
                    offset: Offset(0, 7),
                  ),
                ],
              ),

              // ClipRRect
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(28),

                // Stack
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Image.asset
                    Image.asset(
                      'assets/header.jpg',
                      fit: BoxFit.cover,
                    ),

                    // Gradient lembut
                    Container(
                      decoration:
                      const BoxDecoration(
                        gradient:
                        LinearGradient(
                          begin:
                          Alignment.centerLeft,
                          end:
                          Alignment.centerRight,
                          colors: [
                            Color(0xE6FFF0F4),
                            Color(0x7AFFF0F4),
                            Color(0x00FFF0F4),
                          ],
                        ),
                      ),
                    ),

                    // Positioned
                    const Positioned(
                      left: 20,
                      top: 19,

                      // Text
                      child: Text(
                        'KISÉ EDIT',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight:
                          FontWeight.bold,
                          letterSpacing: 2,
                          color:
                          Color(0xFF8B3A52),
                        ),
                      ),
                    ),

                    // Positioned
                    const Positioned(
                      left: 20,
                      top: 48,

                      // Column
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          // Text
                          Text(
                            'YOUR LIPS.',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              Color(0xFF542333),
                            ),
                          ),

                          // Text
                          Text(
                            'YOUR MOOD.',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight:
                              FontWeight.bold,
                              color:
                              Color(0xFF8B3A52),
                            ),
                          ),

                          // SizedBox
                          SizedBox(height: 9),

                          // Text
                          Text(
                            'Find the shade\n'
                                'that feels like you.',
                            style: TextStyle(
                              fontSize: 11,
                              height: 1.5,
                              color:
                              Color(0xFF76505F),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Positioned
                    Positioned(
                      left: 20,
                      bottom: 18,

                      // Container
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 8,
                        ),

                        decoration:
                        BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(
                            20,
                          ),
                        ),

                        // Text
                        child: const Text(
                          'UP TO 30% OFF',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight:
                            FontWeight.bold,
                            letterSpacing: 1,
                            color:
                            Color(0xFF8B3A52),
                          ),
                        ),
                      ),
                    ),

                    // Positioned
                    const Positioned(
                      right: 18,
                      top: 18,

                      // Container
                      child: Text(
                        '♡',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox
            const SizedBox(height: 30),

            // ==================================================
            // CATEGORY TITLE
            // ==================================================

            // Row
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                // Column
                const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text(
                      'Explore your mood',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF542333),
                      ),
                    ),

                    // SizedBox
                    SizedBox(height: 3),

                    // Text
                    Text(
                      'Choose your everyday lip look',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFA47787),
                      ),
                    ),
                  ],
                ),

                // Text
                const Text(
                  '♡',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF8B3A52),
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 14),

            // Row
            Row(
              children: [
                // Expanded
                const Expanded(
                  child: CategoryItem(
                    icon:
                    Icons.water_drop_outlined,
                    title: 'Tint',
                  ),
                ),

                // SizedBox
                const SizedBox(width: 10),

                // Expanded
                const Expanded(
                  child: CategoryItem(
                    icon: Icons.auto_awesome,
                    title: 'Lipstick',
                  ),
                ),

                // SizedBox
                const SizedBox(width: 10),

                // Expanded
                const Expanded(
                  child: CategoryItem(
                    icon:
                    Icons.bubble_chart_outlined,
                    title: 'Gloss',
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 27),

            // ==================================================
            // BEAUTY MOOD
            // ==================================================

            // Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: const Color(0xFFFBE9EF),
                borderRadius:
                BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xFFF2D2DC),
                ),
              ),

              // Row
              child: Row(
                children: [
                  // Container
                  Container(
                    width: 48,
                    height: 48,

                    decoration:
                    const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                    // Icon
                    child: const Icon(
                      Icons.auto_awesome,
                      color:
                      Color(0xFF8B3A52),
                      size: 21,
                    ),
                  ),

                  // SizedBox
                  const SizedBox(width: 13),

                  // Expanded
                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        // Text
                        Text(
                          'TODAY\'S LIP MOOD',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight:
                            FontWeight.bold,
                            letterSpacing: 1,
                            color:
                            Color(0xFFA06C7E),
                          ),
                        ),

                        // SizedBox
                        SizedBox(height: 4),

                        // Text
                        Text(
                          'Soft, sweet & berry cute.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight:
                            FontWeight.bold,
                            color:
                            Color(0xFF713047),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Text
                  const Text(
                    '✦',
                    style: TextStyle(
                      fontSize: 18,
                      color:
                      Color(0xFFB26A82),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox
            const SizedBox(height: 30),

            // ==================================================
            // BEST SELLERS
            // ==================================================

            // Row
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                // Column
                const Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // Text
                    Text(
                      'Best sellers',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF542333),
                      ),
                    ),

                    // SizedBox
                    SizedBox(height: 3),

                    // Text
                    Text(
                      'Loved by KISÉ girls',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFFA47787),
                      ),
                    ),
                  ],
                ),

                // Container
                Container(
                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 7,
                  ),

                  decoration: BoxDecoration(
                    color:
                    const Color(0xFFF8DCE5),
                    borderRadius:
                    BorderRadius.circular(20),
                  ),

                  // Text
                  child: const Text(
                    'KISÉ FAV',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight:
                      FontWeight.bold,
                      letterSpacing: 1,
                      color:
                      Color(0xFF8B3A52),
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox
            const SizedBox(height: 14),

            // Produk berdasarkan hasil pencarian
            if (filteredProducts.isEmpty)
            // Container
              Container(
                width: double.infinity,
                padding:
                const EdgeInsets.all(30),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(22),
                ),

                // Column
                child: const Column(
                  children: [
                    // Icon
                    Icon(
                      Icons.search_off_rounded,
                      size: 42,
                      color:
                      Color(0xFFB98799),
                    ),

                    // SizedBox
                    SizedBox(height: 10),

                    // Text
                    Text(
                      'Product not found',
                      style: TextStyle(
                        fontWeight:
                        FontWeight.bold,
                        color:
                        Color(0xFF542333),
                      ),
                    ),

                    // SizedBox
                    SizedBox(height: 5),

                    // Text
                    Text(
                      'Try another shade or product name.',
                      style: TextStyle(
                        fontSize: 11,
                        color:
                        Color(0xFF9A7180),
                      ),
                    ),
                  ],
                ),
              )
            else
            // Column
              Column(
                children:
                filteredProducts.map((product) {
                  return Padding(
                    // Padding
                    padding:
                    const EdgeInsets.only(
                      bottom: 14,
                    ),

                    // ProductCard
                    child: ProductCard(
                      image: product['image'],
                      category:
                      product['category'],
                      name: product['name'],
                      price: product['price'],
                      rating: product['rating'],
                    ),
                  );
                }).toList(),
              ),

            // SizedBox
            const SizedBox(height: 10),

            // ==================================================
            // BEAUTY NOTE
            // ==================================================

            // Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(19),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(24),

                // BoxShadow
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x107D3049),
                    blurRadius: 14,
                    offset: Offset(0, 5),
                  ),
                ],
              ),

              // Column
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  // Row
                  Row(
                    children: [
                      // Container
                      Container(
                        width: 37,
                        height: 37,

                        decoration:
                        const BoxDecoration(
                          color:
                          Color(0xFFF8DCE5),
                          shape:
                          BoxShape.circle,
                        ),

                        // Icon
                        child: const Icon(
                          Icons.favorite,
                          size: 17,
                          color:
                          Color(0xFF8B3A52),
                        ),
                      ),

                      // SizedBox
                      const SizedBox(width: 10),

                      // Text
                      const Text(
                        'A little beauty note',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight:
                          FontWeight.bold,
                          color:
                          Color(0xFF542333),
                        ),
                      ),
                    ],
                  ),

                  // SizedBox
                  const SizedBox(height: 12),

                  // Text
                  const Text(
                    'There is no perfect shade for everyone — '
                        'there is only the shade that feels '
                        'perfectly you.',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.5,
                      color:
                      Color(0xFF8E707B),
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox
            const SizedBox(height: 22),

            // Text
            const Center(
              child: Text(
                'made for your everyday glow ♡',
                style: TextStyle(
                  fontSize: 11,
                  fontStyle:
                  FontStyle.italic,
                  letterSpacing: 0.5,
                  color:
                  Color(0xFFAA7B8B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}