import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final string = 'flutter demo code';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: 100.0,
          height: 200.0,
          child: ElevatedButton(onPressed: () {}, child: null),
        ),
        SizedBox(
          width: 200.0,
          height: 100.0,
          child: AbsorbPointer(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                onPressed: () {},
                child: null),
          ),
        )
      ],
    );
  }
}
