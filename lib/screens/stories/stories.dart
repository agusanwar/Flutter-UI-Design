import 'package:flutter/material.dart';
import 'package:uidesign/screens/stories/story_page.dart';
import 'package:uidesign/screens/stories/widget/stories_circle.dart';

class StoriesScreens extends StatefulWidget {
  const StoriesScreens({super.key});

  @override
  State<StoriesScreens> createState() => _StoriesScreensState();
}

class _StoriesScreensState extends State<StoriesScreens> {
  void _story() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StoryPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: Text('S T O R I E S'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(
                  child: StoriesCircle(
                    onTap: _story,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
