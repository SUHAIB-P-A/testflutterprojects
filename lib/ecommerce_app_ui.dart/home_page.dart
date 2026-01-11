import 'package:flutter/material.dart';
import 'banner_widget.dart';
import 'product_card_widget.dart';

class ModanisaHomePage extends StatelessWidget {
  const ModanisaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'modanisa',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black54),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Categories / Tags
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTag('Home Page', isActive: true),
                    _buildTag('Brands'),
                    _buildTag('Flash Sale'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Most Wanted Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Wanted',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Most Wanted Items - Horizontal List (Placeholder for now)
              Row(
                children: [
                  _buildCircleItem('Dresses', 'From 19.99'),
                  const SizedBox(width: 16),
                  _buildCircleItem('Swimsuits', 'From 9.99'),
                ],
              ),

              const SizedBox(height: 24),

              // Banners Scroll View
              SizedBox(
                height: 180,
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  padEnds:
                      false, // Optional: Align to start if needed, but usually centered is better for this design
                  children: [
                    CustomBannerWidget(
                      backgroundColor: const Color(0xFFFFF0E6), // Light Orange
                      title: 'Weekly 30% OFF',
                      subtitle: "Don't miss the super discounts.",
                      buttonText: 'Shop Now',
                      imagePath:
                          'assets/images/banner1.png', // Placeholder path
                      onShopNow: () {},
                    ),
                    CustomBannerWidget(
                      backgroundColor: const Color(0xFFFFEAEA), // Light Pink
                      title: 'Weekly 25% OFF',
                      subtitle: "Don't miss the super discounts.",
                      buttonText: 'Shop Now',
                      imagePath:
                          'assets/images/banner2.png', // Placeholder path
                      onShopNow: () {},
                    ),
                    CustomBannerWidget(
                      backgroundColor: const Color(0xFFFFF4E6), // Light Beige
                      title: 'Weekly 40% OFF',
                      subtitle: "Don't miss the super discounts.",
                      buttonText: 'Shop Now',
                      imagePath:
                          'assets/images/banner3.png', // Placeholder path
                      onShopNow: () {},
                    ),
                    CustomBannerWidget(
                      backgroundColor: const Color(0xFFE6E6FA), // Light Purple
                      title: 'Weekly 30% OFF',
                      subtitle: "Don't miss the super discounts.",
                      buttonText: 'Shop Now',
                      imagePath:
                          'assets/images/banner4.png', // Placeholder path
                      onShopNow: () {},
                    ),
                    CustomBannerWidget(
                      backgroundColor: const Color(0xFFE0F7FA), // Light Cyan
                      title: 'Weekly 35% OFF',
                      subtitle: "Don't miss the super discounts.",
                      buttonText: 'Shop Now',
                      imagePath:
                          'assets/images/banner5.png', // Placeholder path
                      onShopNow: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Best Price Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best Price',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Best Price Grid View
              GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75, // Adjust card aspect ratio
                ),
                itemCount: 4, // Number of items
                itemBuilder: (context, index) {
                  // Placeholder data list
                  final products = [
                    {
                      'title': 'Tuva',
                      'price': '41.32 AED',
                      'image': 'assets/images/product1.png',
                    },
                    {
                      'title': 'Hafsa Mina',
                      'price': '285.95 AED',
                      'image': 'assets/images/product2.png',
                    },
                    {
                      'title': 'Alia',
                      'price': '146.76 AED',
                      'image': 'assets/images/product3.png',
                    },
                    {
                      'title': 'Benin',
                      'price': '146.76 AED',
                      'image': 'assets/images/product4.png',
                    },
                  ];

                  return ProductCardWidget(
                    imagePath: products[index]['image']!,
                    title: products[index]['title']!,
                    price: products[index]['price']!,
                  );
                },
              ),
              const SizedBox(height: 30), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String text, {bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFF6F00) : Colors.grey[200],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black54,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCircleItem(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50], // Very light grey background
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 24,
            // backgroundImage: AssetImage('...'),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
