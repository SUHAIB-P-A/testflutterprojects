

import 'package:flutter/material.dart';
import 'package:testdemoflutterapps/core/app_colors.dart';

class Animatedlistincustomscreollview extends StatefulWidget {
  const Animatedlistincustomscreollview({super.key});

  @override
  State<Animatedlistincustomscreollview> createState() =>
      _AnimatedlistincustomscreollviewState();
}

class _AnimatedlistincustomscreollviewState
    extends State<Animatedlistincustomscreollview> {
  final GlobalKey<SliverAnimatedListState> key = GlobalKey();
  final List<int> items = [];

  void addItem() {
    final index = 0;
    items.insert(index, items.length);

    final state = key.currentState;
    if (state != null) {
      state.insertItem(index);
    } else {
      debugPrint("AnimatedList not ready yet");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return addItem();
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAnimatedList(
            key: key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: ListTile(
                  title: Text(
                    "Item ${items[index]}",
                    style: TextStyle(color: Color(0xffF1F3F4), fontSize: 24),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
