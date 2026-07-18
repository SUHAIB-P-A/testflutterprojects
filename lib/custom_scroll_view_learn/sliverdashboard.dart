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
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
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
              titlePadding: .symmetric(horizontal: 16, vertical: 12),
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

          //----------------------------------------//
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: Colors.white60,

            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              background: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: .symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: .circular(20),
                              color: Colors.blue,
                            ),

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      "Target",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                    Text(
                                      "(14/20)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: .start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "12",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: .bold,
                                          ),
                                        ),
                                        Text(
                                          "Daily",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: .w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        // container 2
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,

                            padding: .symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: .circular(20),
                              color: Colors.deepOrange,
                            ),

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      "Target",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                    Text(
                                      "(5/40)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: .start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "5",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: .bold,
                                          ),
                                        ),
                                        Text(
                                          "weekly",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: .w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            //width: double.infinity,

                            //alignment: Alignment.center,
                            padding: .symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: .circular(20),
                              color: Colors.limeAccent,
                            ),

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: .end,
                                  children: [
                                    Text(
                                      "Target",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                    Text(
                                      "(10/60)",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: .start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "10",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 24,
                                            fontWeight: .bold,
                                          ),
                                        ),
                                        Text(
                                          "mothly",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: .w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverFillRemaining(hasScrollBody: true),
        ],
      ),
    );
  }
}
