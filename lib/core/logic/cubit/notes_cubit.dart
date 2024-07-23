import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/core/models/note_model.dart';
import 'package:notesapp/core/theming/colors.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
