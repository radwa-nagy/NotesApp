import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/core/logic/cubit/notes_cubit.dart';
import 'package:notesapp/core/router/app_routes.dart';
import 'package:notesapp/features/home.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          onGenerateRoute: appRouter.generateRoute,
          home: const HomeScreen()),
    );
  }
}
