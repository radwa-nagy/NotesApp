import 'package:flutter/material.dart';
import 'package:notesapp/Notes_app.dart';
import 'package:notesapp/core/router/app_routes.dart';

void main() {
  runApp(NotesApp(
    appRouter: AppRouter(),
  ));
}
