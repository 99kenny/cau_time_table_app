import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';


class TimeTable extends StatefulWidget {
  String type;

  TimeTable(this.type, {super.key});

  @override
  _TimeTableState createState() => _TimeTableState(type);
}

class _TimeTableState extends State<TimeTable> {
  String type;
  _TimeTableState(this.type);

  //여기 DB에서 호실에 해당하는 시간표 가져오면 될듯
  List<TimePlannerTask> tasks = [
    TimePlannerTask(
      // background color for task
      color: Colors.purple,
      // day: Index of header, hour: Task will be begin at this hour
      // minutes: Task will be begin at this minutes
      dateTime: TimePlannerDateTime(day: 0, hour: 9, minutes: 0),
      // Minutes duration of task
      minutesDuration: 120,
      // Days duration of task (use for multi days task)
      daysDuration: 1,
      onTap: () {},
      child: Text(
        '데베설',
        style: TextStyle(color: Colors.grey[350], fontSize: 12),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(type),
      ),
      body: TimePlanner(
        // time will be start at this hour on table
        startHour: 8,
        // time will be end at this hour on table
        endHour: 19,
        // each header is a column and a day
        headers: [
          TimePlannerTitle(
            title: "월",
          ),
          TimePlannerTitle(
            title: "화",
          ),
          TimePlannerTitle(
            title: "수",
          ),
          TimePlannerTitle(
            title: "목",
          ),
          TimePlannerTitle(
            title: "금",
          ),
        ],
        // List of task will be show on the time planner
        tasks: tasks,
      ),
    );
  }
}
