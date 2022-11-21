import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FullToRefreshScreens extends StatefulWidget {
  const FullToRefreshScreens({super.key});

  @override
  State<FullToRefreshScreens> createState() => _FullToRefreshScreensState();
}

Future<void> _handleRefresh() async {
  return await Future.delayed(Duration(seconds: 2));
}

class _FullToRefreshScreensState extends State<FullToRefreshScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Pull to Refresh'),
        centerTitle: true,
      ),
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.blue[700],
        backgroundColor: Colors.blue[200],
        height: 270,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.blue[500],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
