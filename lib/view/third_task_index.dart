import 'package:flutter/material.dart';
import 'package:task/view/third_task.dart';

class ThirdTaskIndex extends StatefulWidget {
  const ThirdTaskIndex({Key? key}) : super(key: key);

  @override
  State<ThirdTaskIndex> createState() => _ThirdTaskIndexState();
}

class _ThirdTaskIndexState extends State<ThirdTaskIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('third task'),
      ),
      // ignore: prefer_const_constructors
      body: ThirdTask(),
    );
  }
}
