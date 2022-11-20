import 'package:flutter/material.dart';
import 'package:uidesign/screens/stories/data/stories1.dart';
import 'package:uidesign/screens/stories/data/stories2.dart';
import 'package:uidesign/screens/stories/data/stories3.dart';
import 'package:uidesign/screens/stories/story_bar.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int countStoryIndex = 0;
  final List<Widget> myStories = [
    Stories1(),
    Stories2(),
    Stories3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Stack(
          children: [
            // story
            myStories[countStoryIndex],

            Center(
              child: StoryBar(),
            ),
          ],
        ));
  }
}
