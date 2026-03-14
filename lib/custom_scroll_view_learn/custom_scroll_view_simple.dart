import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/core/app_colors.dart';

class CustomScrollViewSimple extends StatefulWidget {
  const CustomScrollViewSimple({super.key});

  @override
  State<CustomScrollViewSimple> createState() => _CustomScrollViewSimpleState();
}

class _CustomScrollViewSimpleState extends State<CustomScrollViewSimple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: CustomScrollView(
        slivers: [
          // SILVER APP BAR
          SliverAppBar(
            backgroundColor: Color(0xff9AA0A6),
            floating: true,
            pinned: true,
            clipBehavior: Clip.hardEdge,
            title: const Text(
              "Silver Appbar",
              style: TextStyle(color: Color(0xffF1F3F4)),
            ),
          ),

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

          // Adding Normal Widgets (SliverToBoxAdapter)
          //You cannot directly add a normal widget like Container.
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Color(0xffCEEAD6),
              child: const Center(child: Text("Normal Widget")),
            ),
          ),

          // SILVER GRID (SliverGrid (Grid inside scroll))
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                color: Color(0xffE37400),
                child: Center(child: Text("$index")),
              );
            }, childCount: 8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
