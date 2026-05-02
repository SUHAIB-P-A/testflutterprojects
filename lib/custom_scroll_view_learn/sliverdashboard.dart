import 'dart:developer';

import 'package:flutter/material.dart';

class Sliverdashboard extends StatefulWidget {
  const Sliverdashboard({super.key});

  @override
  State<Sliverdashboard> createState() => _SliverdashboardState();
}

class _SliverdashboardState extends State<Sliverdashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            backgroundColor: Colors.white60,
            //pinned: true,
            expandedHeight: 120,

            toolbarHeight: 80,

            primary: false,

            //collapsedHeight: kToolbarHeight + 1,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: .end,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "GOOD MORNING,",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                        Container(
                          padding: .all(8),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.withValues(alpha: 0.4),
                            border: Border.all(width: 1.5, color: Colors.white),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person_4_outlined,
                            color: Colors.deepPurple,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 26),
                  ],
                ),
              ),
              titlePadding: .symmetric(horizontal: 16),
              expandedTitleScale: 1.3,
              title: Text(
                "Suhaib P A",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),

          SliverFillRemaining(),
        ],
      ),
    );
  }
}
