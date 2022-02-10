import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/details_generic/detailsGeneric_store.dart';
import 'package:flutter/material.dart';

class DetailsGenericPage extends StatefulWidget {
  final String title;
  const DetailsGenericPage({Key? key, this.title = 'DetailsGenericPage'}) : super(key: key);
  @override
  DetailsGenericPageState createState() => DetailsGenericPageState();
}
class DetailsGenericPageState extends State<DetailsGenericPage> {
  final DetailsGenericStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}