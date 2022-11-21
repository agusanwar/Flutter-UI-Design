import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableScreens extends StatefulWidget {
  const SlidableScreens({super.key});

  @override
  State<SlidableScreens> createState() => _SlidableScreensState();
}

class _SlidableScreensState extends State<SlidableScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.phone,
              label: 'Call',
            ),
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.chat,
              label: 'message',
            ),
          ]),
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ]),
          child: Container(
            color: Colors.grey,
            child: ListTile(
              title: Text('Enaily'),
              subtitle: Text('Enginering Software'),
              leading: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
