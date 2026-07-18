import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tapbarviweexample extends StatefulWidget {
  const Tapbarviweexample({super.key});

  @override
  State<Tapbarviweexample> createState() => _TapbarviweexampleState();
}

class _TapbarviweexampleState extends State<Tapbarviweexample>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        scrollBehavior: CupertinoScrollBehavior(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 100,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Shop"),
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                titlePadding: EdgeInsets.only(bottom: 80),
              ),
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: "Home"),
                  Tab(text: "Popular"),
                ],
              ),
            ),
          ];
        },

        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 20,
              itemBuilder: (_, i) => ListTile(title: Text("Home $i")),
            ),

            ListView.builder(
              itemCount: 20,
              itemBuilder: (_, i) => ListTile(title: Text("Popular $i")),
            ),
          ],
        ),
      ),
    );
  }
}
