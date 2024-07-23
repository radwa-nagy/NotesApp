import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/core/router/routes.dart';
import 'package:notesapp/features/edit_screen.dart';
import 'package:notesapp/features/widgets/add_note_button_sheet.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.editScreen:
        return MaterialPageRoute(builder: (_) => const AddNoteButtomSheet());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No Route defiend For ${settings.name}'),
                  ),
                ));
    }
  }
}
