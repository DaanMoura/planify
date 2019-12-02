import 'package:flutter/material.dart';
import 'package:planify/models/subject.dart';

class SubjectsTab extends StatefulWidget {
  @override
  _SubjectsTabState createState() => _SubjectsTabState();
}

class _SubjectsTabState extends State<SubjectsTab> {
  List<Subject> _subjectsList = [
    Subject(nome: "Sistemas Operacionais", professor: "Hélio Guardia"),
    Subject(nome: "Interação Humano-Computador", professor: "Vânia Neris"),
    Subject(nome: "Redes de Computadores", professor: "Paulo Matias"),
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
      title: Text(_subjectsList[index].nome),
      subtitle: Text(_subjectsList[index].professor),
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
