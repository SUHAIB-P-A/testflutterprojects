import 'package:flutter/material.dart';

class CustomBannerWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final String buttonText;
  final String? imagePath;
  final VoidCallback? onShopNow;

  const CustomBannerWidget({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.imagePath,
    this.onShopNow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300, // Removed for PageView responsiveness
      // margin: const EdgeInsets.only(right: 16), // Managed by PageView builder or spacing
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ), // Standardize gap for PageView
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24), // Increased curvature
      ),
      clipBehavior: Clip
          .antiAlias, // Ensure child images are clipped to the rounded corners
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 160, // Limit width to avoid overlap with image
                  child: Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: onShopNow,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF6F00), // Orange color
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
          if (imagePath != null)
            Positioned(
              right: -10,
              bottom: 0,
              child: Image.asset(
                imagePath!,
                height: 140,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    width: 100,
                    height: 140,
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.black26,
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
