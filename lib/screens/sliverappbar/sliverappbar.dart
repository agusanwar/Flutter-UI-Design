import 'package:flutter/material.dart';

class Sliverapp extends StatelessWidget {
  const Sliverapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // Sliver App Bar
          SliverAppBar(
            backgroundColor: Colors.deepPurpleAccent,
            leading: Icon(Icons.menu),
            title: Text('S L I V E R A P P B A R'),
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.deepPurple,
              ),
            ),
          ),

          // Sliper Item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          // Sliper Item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          // Sliper Item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          // Sliper Item
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
