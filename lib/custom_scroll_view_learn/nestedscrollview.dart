import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/core/app_colors.dart';

class Nestedscrollview extends StatefulWidget {
  const Nestedscrollview({super.key});

  @override
  State<Nestedscrollview> createState() => _NestedscrollviewState();
}

class _NestedscrollviewState extends State<Nestedscrollview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),

              sliver: SliverAppBar(
                title: Text("Example"),
                pinned: true,
                expandedHeight: 200,
              ),
            ),
          ];
        },

        body: Builder(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                ),

                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text("$index",
                        style: TextStyle(
                          color: Color(0xffF1F3F4),
                          fontSize: 24,
                        ),
                      )),
                    childCount: 30,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}