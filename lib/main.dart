import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}


class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}
class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(  //Instead of ListView or SingleChildScrollView put CustomScrollVIew to use Expanded or spacer
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Using Expanded and Spacer"),
                Spacer(flex: 2,), //defaults is flex:1
                Text("Inside"),
                Expanded(child: Text("ListView"),)
              ],),
        ),],
      ),
    );
  }
}
