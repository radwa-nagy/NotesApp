import 'package:flutter/material.dart';
import 'package:notesapp/features/widgets/custom_icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
      CustomeIcon(
        onPressed: onPressed,
        icon: icon,
      ),
    ]);
  }
}
