import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/home/details_destaques/detailsDestaques_store.dart';
import 'package:flutter/material.dart';

class DetailsDestaquesPage extends StatefulWidget {
  final String title;
  const DetailsDestaquesPage({Key? key, this.title = 'DetailsDestaquesPage'}) : super(key: key);
  @override
  DetailsDestaquesPageState createState() => DetailsDestaquesPageState();
}
class DetailsDestaquesPageState extends State<DetailsDestaquesPage> {
  final DetailsDestaquesStore store = Modular.get();

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