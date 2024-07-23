import 'package:flutter/material.dart';
import 'package:notesapp/core/router/app_routes.dart';
import 'package:notesapp/features/home.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        home: const HomeScreen());
  }
}
