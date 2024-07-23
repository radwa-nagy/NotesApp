import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Notes_app.dart';
import 'package:notesapp/core/helper/simple_bloc_observer.dart';
import 'package:notesapp/core/models/note_model.dart';
import 'package:notesapp/core/router/app_routes.dart';
import 'package:notesapp/core/theming/colors.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(NotesApp(appRouter: AppRouter()));
}
