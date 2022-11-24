import 'package:class_time_table/list_page.dart';
import 'package:class_time_table/time_table.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{
  String type;
  String building;

  ListItem(this.type, this.building, {super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder( //버튼을 둥글게 처리
      borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton( //ButtonTheme의 child로 버튼 위젯 삽입
        onPressed: () {
          if(type == "강의실"){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListPage("호 수")));
          }
          else{
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TimeTable("호 수")));
          }
        },
        child: Text(building,
          style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurpleAccent
        ),
      ),
    );
  }

}