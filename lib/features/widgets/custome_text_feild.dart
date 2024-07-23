import 'package:flutter/material.dart';
import 'package:notesapp/core/theming/colors.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key,
      required this.hint,
      this.maxline = 1,
      this.onSaved,
      this.onChange});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return ('Field is required');
        } else {
          return null;
        }
      },
      cursorColor: kprimarycolor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kprimarycolor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
