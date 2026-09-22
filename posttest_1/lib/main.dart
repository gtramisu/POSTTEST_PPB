import 'package:flutter/material.dart';
// import widget kategori
import 'widgets/category_item.dart';
// import widget produk
import 'widgets/product_card.dart';

void main() {
  // menjalankan aplikasi
  runApp(const KiseApp());
}

// widget utama aplikasi
class KiseApp extends StatelessWidget {
  const KiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    // materialapp untuk mengatur aplikasi
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // homepage sebagai halaman awal
      home: const HomePage(),
    );
  }
}

// widget halaman utama
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold sebagai struktur dasar halaman
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7F9),

      // safearea supaya isi tidak tertutup status bar
      body: SafeArea(

        // singlechildscrollview supaya halaman bisa di scroll
        child: SingleChildScrollView(

          // padding untuk memberi jarak dari tepi layar
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              18,
              20,
              24,
            ),

            // column untuk menyusun isi halaman
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // row untuk bagian header
                Row(
                  children: [

                    // expanded untuk memberi ruang pada logo
                    const Expanded(
                      // text untuk nama aplikasi
                      child: Text(
                        'KISÉ',
                        style: TextStyle(
                          fontSize: 31,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          color: Color(0xFF8B3A52),
                        ),
                      ),
                    ),

                    // icon untuk tombol favorit
                    const Icon(
                      Icons.favorite_border_rounded,
                      size: 26,
                      color: Color(0xFF8B3A52),
                    ),

                    // sizedbox untuk memberi jarak
                    const SizedBox(
                      width: 17,
                    ),

                    // icon untuk tombol shopping bag
                    const Icon(
                      Icons.shopping_bag_outlined,
                      size: 26,
                      color: Color(0xFF8B3A52),
                    ),
                  ],
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 34,
                ),

                // text untuk sapaan pengguna
                const Text(
                  'Hello, Lovely! ♡',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF38242B),
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 7,
                ),

                // text untuk tagline aplikasi
                const Text(
                  'Find your perfect lip color',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF96767F),
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 21,
                ),

                // textfield untuk mencari produk
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search your favorite lip...',
                    hintStyle: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFFAA969C),
                    ),

                    // icon untuk ikon pencarian
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xFF9B4E68),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 25,
                ),

                // container untuk banner promo
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(23),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3D4DE),
                    borderRadius: BorderRadius.circular(24),
                  ),

                  // column untuk menyusun isi banner
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // text untuk label promo
                      const Text(
                        'SPECIAL OFFER',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Color(0xFF8B3A52),
                        ),
                      ),

                      // sizedbox untuk memberi jarak
                      const SizedBox(
                        height: 9,
                      ),

                      // text untuk informasi diskon
                      const Text(
                        'Up to 30% OFF',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B2934),
                        ),
                      ),

                      // sizedbox untuk memberi jarak
                      const SizedBox(
                        height: 6,
                      ),

                      // text untuk deskripsi promo
                      const Text(
                        'A little color, a lot of confidence.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF795963),
                        ),
                      ),

                      // sizedbox untuk memberi jarak
                      const SizedBox(
                        height: 17,
                      ),

                      // container untuk tombol shop now
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 19,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B3A52),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        // text untuk tulisan tombol
                        child: const Text(
                          'Shop Now  →',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 30,
                ),

                // row untuk judul kategori
                Row(
                  children: [

                    // expanded untuk judul kategori
                    const Expanded(
                      // text untuk judul kategori
                      child: Text(
                        'Shop by Category',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF38242B),
                        ),
                      ),
                    ),

                    // text untuk melihat semua kategori
                    const Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9B4E68),
                      ),
                    ),
                  ],
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 15,
                ),

                // row untuk menyusun kategori
                Row(
                  children: [

                    // expanded untuk kategori tint
                    const Expanded(
                      // categoryitem untuk kategori tint
                      child: CategoryItem(
                        icon: Icons.colorize_rounded,
                        title: 'Tint',
                      ),
                    ),

                    // sizedbox untuk memberi jarak
                    const SizedBox(
                      width: 10,
                    ),

                    // expanded untuk kategori lipstick
                    const Expanded(
                      // categoryitem untuk kategori lipstick
                      child: CategoryItem(
                        icon: Icons.brush_rounded,
                        title: 'Lipstick',
                      ),
                    ),

                    // sizedbox untuk memberi jarak
                    const SizedBox(
                      width: 10,
                    ),

                    // expanded untuk kategori gloss
                    const Expanded(
                      // categoryitem untuk kategori gloss
                      child: CategoryItem(
                        icon: Icons.water_drop_outlined,
                        title: 'Gloss',
                      ),
                    ),
                  ],
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 31,
                ),

                // row untuk bagian best sellers
                Row(
                  children: [

                    // expanded untuk judul best sellers
                    const Expanded(
                      // text untuk judul best sellers
                      child: Text(
                        'Best Sellers',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF38242B),
                        ),
                      ),
                    ),

                    // text untuk melihat semua produk
                    const Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9B4E68),
                      ),
                    ),
                  ],
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 15,
                ),

                // productcard untuk produk pertama
                const ProductCard(
                  label: 'BEST SELLER',
                  name: 'Berry Kiss Lip Tint',
                  price: 'Rp89.000',
                  rating: '4.9  •  120 reviews',
                  icon: Icons.brush_rounded,
                  backgroundColor: Color(0xFFF5D9E1),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 13,
                ),

                // productcard untuk produk kedua
                const ProductCard(
                  label: 'NEW ARRIVAL',
                  name: 'Rosy Blush Lipstick',
                  price: 'Rp109.000',
                  rating: '4.8  •  86 reviews',
                  icon: Icons.brush_rounded,
                  backgroundColor: Color(0xFFF2DEE4),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 13,
                ),

                // productcard untuk produk ketiga
                const ProductCard(
                  label: 'GLOSSY FAVORITE',
                  name: 'Peach Glow Lip Gloss',
                  price: 'Rp79.000',
                  rating: '4.9  •  104 reviews',
                  icon: Icons.water_drop_outlined,
                  backgroundColor: Color(0xFFF7E3E7),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 28,
                ),

                // container untuk quote
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 21,
                    horizontal: 18,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEED5DC),
                    borderRadius: BorderRadius.circular(22),
                  ),

                  // column untuk menyusun isi quote
                  child: Column(
                    children: [

                      // icon untuk dekorasi hati
                      const Icon(
                        Icons.favorite_rounded,
                        size: 23,
                        color: Color(0xFF8B3A52),
                      ),

                      // sizedbox untuk memberi jarak
                      const SizedBox(
                        height: 9,
                      ),

                      // text untuk quote
                      const Text(
                        'A little color, a lot of confidence.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF542936),
                        ),
                      ),

                      // sizedbox untuk memberi jarak
                      const SizedBox(
                        height: 5,
                      ),

                      // text untuk nama brand
                      const Text(
                        'KISÉ — Lip Beauty Store',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF795963),
                        ),
                      ),
                    ],
                  ),
                ),

                // sizedbox untuk memberi jarak
                const SizedBox(
                  height: 23,
                ),

                // container untuk bottom navigation
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  // row untuk menyusun menu navigasi
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // column untuk menu home
                      Column(
                        children: [

                          // icon untuk menu home
                          const Icon(
                            Icons.home_rounded,
                            size: 23,
                            color: Color(0xFF8B3A52),
                          ),

                          // sizedbox untuk memberi jarak
                          const SizedBox(
                            height: 4,
                          ),

                          // text untuk nama menu home
                          const Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF8B3A52),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // column untuk menu wishlist
                      Column(
                        children: [

                          // icon untuk menu wishlist
                          const Icon(
                            Icons.favorite_border_rounded,
                            size: 23,
                            color: Color(0xFF96767F),
                          ),

                          // sizedbox untuk memberi jarak
                          const SizedBox(
                            height: 4,
                          ),

                          // text untuk nama menu wishlist
                          const Text(
                            'Wishlist',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF96767F),
                            ),
                          ),
                        ],
                      ),

                      // column untuk menu profile
                      Column(
                        children: [

                          // icon untuk menu profile
                          const Icon(
                            Icons.person_outline_rounded,
                            size: 23,
                            color: Color(0xFF96767F),
                          ),

                          // sizedbox untuk memberi jarak
                          const SizedBox(
                            height: 4,
                          ),

                          // text untuk nama menu profile
                          const Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF96767F),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // sizedbox untuk jarak bagian bawah
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}