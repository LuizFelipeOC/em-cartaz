import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key, this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
