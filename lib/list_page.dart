import 'package:class_time_table/list_item.dart';
import 'package:flutter/material.dart';


class ListPage extends StatefulWidget {
  String type;

  ListPage(this.type, {super.key});

  @override
  _ListPageState createState() => _ListPageState(type);
}

class _ListPageState extends State<ListPage> {
  String type;
  late List<String> list;
  _ListPageState(this.type);


  @override
  Widget build(BuildContext context) {
    list = <String>["310관", "208관"];
    return Scaffold(
      appBar: AppBar(
        title: Text(type),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index){
              return ListItem(type, list.elementAt(index));
            },
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("hello"),
          )
        ],
      ),
    );
  }
}
