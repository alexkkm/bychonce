import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[background(), Container(child: null)]);
  }
}

Widget background() {
  return Image.asset("images/background.jpg");
}
