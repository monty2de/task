import 'package:flutter/material.dart';
import 'package:task/view/second_task.dart';
import 'package:task/view/third_task_index.dart';

class SecondTaskIndex extends StatefulWidget {
  const SecondTaskIndex({Key? key}) : super(key: key);

  @override
  State<SecondTaskIndex> createState() => _SecondTaskIndexState();
}

class _SecondTaskIndexState extends State<SecondTaskIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second task'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ThirdTaskIndex();
              }));
            },
            child: const Text("go to task 3  ",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      // ignore: prefer_const_constructors
      body: SecondTask(),
    );
  }
}
