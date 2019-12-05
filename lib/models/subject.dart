enum Weekday { Sun, Mon, Tue, Wed, Thu, Fri, Sat }

class SubjectHour {
  Weekday day;
  int hourBegin;
  int minuteBegin;
  int hourEnd;
  int minuteEnd;

  SubjectHour({
    this.day,
    this.hourBegin,
    this.minuteBegin = 0,
    this.hourEnd,
    this.minuteEnd = 0,
  });
}

class Subject {
  String name;
  String teacher;
  String local;
  List<SubjectHour> schedule;
  int faults = 0;
  List<String> notes = [];

  Subject({this.name, this.teacher, this.local, this.schedule});

  void incrementFault() => this.faults++;

  void addNote(String note) => notes.add(note);

  void deleteNote(int index) => notes.removeAt(index);
}
