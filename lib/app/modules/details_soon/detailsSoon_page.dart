import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/details_soon/detailsSoon_store.dart';
import 'package:flutter/material.dart';

class DetailsSoonPage extends StatefulWidget {
  final String title;
  const DetailsSoonPage({Key? key, this.title = 'DetailsSoonPage'}) : super(key: key);
  @override
  DetailsSoonPageState createState() => DetailsSoonPageState();
}
class DetailsSoonPageState extends State<DetailsSoonPage> {
  final DetailsSoonStore store = Modular.get();

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