import 'package:flutter/material.dart';

class ACwOCarousel extends StatelessWidget {
  const ACwOCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data based on your video
    final List<String> images = [
      'https://picsum.photos/800/400?random=1',
      'https://picsum.photos/800/400?random=2',
      'https://picsum.photos/800/400?random=3',
      'https://picsum.photos/800/400?random=4',
      'https://picsum.photos/800/400?random=5',
    ];

    return Column(
      children: [
        SizedBox(
          height: 250, // Height of the banner area
          child: CarouselView(
            itemExtent: 330, // The width of the "Expanded" main item
            shrinkExtent: 150, // The width of the "Minimal" side items
            children: images.map((url) {
              return Container(
                decoration: BoxDecoration(
                  // Styling to match the ACwO app card
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Stack(
                  children: [
                    // You can add the "9d left" badge here using a Positioned widget
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
