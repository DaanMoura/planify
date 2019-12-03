import 'package:flutter/material.dart';
import 'package:planify/models/subject.dart';

class SubjectsTab extends StatefulWidget {
  @override
  _SubjectsTabState createState() => _SubjectsTabState();
}

class _SubjectsTabState extends State<SubjectsTab> {
  List<Subject> _subjectsList = [
    Subject(
      name: "Sistemas Operacionais",
      teacher: "Hélio Guardia",
      local: "AT5-98",
      schedule: [
        SubjectHour(
          day: Weekday.Tue,
          hourBegin: 8,
          hourEnd: 12,
        ),
      ],
    ),
    Subject(
      name: "Interação Humano-Computador",
      teacher: "Vânia Neris",
      local: "AT7-168",
      schedule: [
        SubjectHour(
          day: Weekday.Fri,
          hourBegin: 8,
          hourEnd: 12,
        ),
      ],
    ),
    Subject(
      name: "Redes de Computadores",
      teacher: "Paulo Matias",
      local: "DC-LE6",
      schedule: [
        SubjectHour(
          day: Weekday.Thu,
          hourBegin: 8,
          hourEnd: 12,
        ),
      ],
    ),
  ];

  final Widget _header = Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          "Disciplinas",
          style: TextStyle(fontSize: 24),
        ),
        Text(
          "2019/2",
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ],
    ),
  );

  Widget _buildSubjectTile(BuildContext ctx, int index) {
    return ListTile(
      title: Text(_subjectsList[index].name),
      subtitle: Text(_subjectsList[index].teacher),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planify"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          _header,
          ListView.separated(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (c, i) => Divider(),
            itemCount: _subjectsList.length,
            itemBuilder: _buildSubjectTile,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("add subject"),
        child: Icon(Icons.add),
      ),
    );
  }
}
