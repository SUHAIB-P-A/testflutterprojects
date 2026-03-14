import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/core/app_colors.dart';

class PersistHeader extends StatefulWidget {
  const PersistHeader({super.key});

  @override
  State<PersistHeader> createState() => _PersistHeaderState();
}

class _PersistHeaderState extends State<PersistHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: Myheader(), pinned: true),
          SliverPadding(
            padding: EdgeInsetsGeometry.all(20),
            sliver: SliverOpacity(
              opacity: 0.8,
              sliver:
                  // SILVER LIST
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ListTile(
                        title: Text(
                          "$index",
                          style: TextStyle(color: Color(0xffF1F3F4)),
                        ),
                      );
                    }, childCount: 20),
                  ),
            ),
          ),

          // SliverFillRemaining (Fill leftover screen)
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Center(
              child: Text("No Data", style: TextStyle(color: Colors.white)),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 50)),
        ],
      ),
    );
  }
}

class Myheader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Color(0xffCEEAD6),
      alignment: Alignment.center,
      child: const Text("Sticky Header"),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
