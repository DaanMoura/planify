import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:planify/models/subject.dart' as planify;
import 'package:rxdart/rxdart.dart';

class SubjectBloc extends BlocBase {
  final _subjectsController = BehaviorSubject<List<planify.Subject>>.seeded([]);
  Stream<List<planify.Subject>> get outSubjects => _subjectsController.stream;
  Sink<List<planify.Subject>> get inSubjects => _subjectsController.sink;

  void setSubjects(List<planify.Subject> subjects) =>
      inSubjects.add(_subjectsController.value = subjects);

  void addSubject(planify.Subject subject) {
    final currentSubjects = _subjectsController.value;
    currentSubjects.add(subject);
    inSubjects.add(_subjectsController.value = currentSubjects);
  }

  @override
  void dispose() {
    _subjectsController.close();
    super.dispose();
  }
}
