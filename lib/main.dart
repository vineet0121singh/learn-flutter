import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        body: const Center(child: MyAbsorbWidget()),
      ),
    );
  }
}

class MyAbsorbWidget extends StatelessWidget {
  const MyAbsorbWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: 200.0,
          width: 100.0,
          child: ElevatedButton(onPressed: () {}, child: null),
        ),
        SizedBox(
          height: 100.0,
          width: 200.0,
          child: AbsorbPointer(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.cyan),
                  onPressed: () {},
                  child: null)),
        )
      ],
    );
  }
}
