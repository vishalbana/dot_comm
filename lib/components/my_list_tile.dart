import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextStyle textStyle;
  final void Function()? onTap;

  const MyListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.textStyle,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: ListTile(
      leading: Icon(
      icon,
      color: Colors.black,
      ),
      
      title: Text(text),
      onTap: onTap,
    ),
    );
  }
}