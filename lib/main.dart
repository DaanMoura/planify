import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:planify/bloc/task_bloc.dart';
import 'package:planify/screens/home/home_screen.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:
    ThemeData(primaryColor: Color(0xffff1744), accentColor: Colors.white),
    home: BlocProvider(
      blocs: [
        Bloc((_) => TaskBloc()),
      ],
      child: HomeScreen(),
    )
));
