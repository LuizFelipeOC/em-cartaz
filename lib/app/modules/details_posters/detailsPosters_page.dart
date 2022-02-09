import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/details_posters/detailsPosters_store.dart';
import 'package:flutter/material.dart';

class DetailsPostersPage extends StatefulWidget {
  final String title;
  const DetailsPostersPage({Key? key, this.title = 'DetailsPostersPage'}) : super(key: key);
  @override
  DetailsPostersPageState createState() => DetailsPostersPageState();
}
class DetailsPostersPageState extends State<DetailsPostersPage> {
  final DetailsPostersStore store = Modular.get();

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