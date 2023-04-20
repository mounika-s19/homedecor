import 'package:flutter/material.dart';

class CustomRadioListTile extends StatelessWidget {
  CustomRadioListTile({
    super.key,
    required this.title,
    required this.image,
    required this.value,
    this.groupValue,
    required this.onChanged,
  });

  String? groupValue;
  final String title;
  final String image;
  final String value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(title),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      secondary: Image.asset(
        image,
        height: 50,
        width: 50,
      ),
    );
  }
}
