import 'package:flutter/material.dart';

import '../shared/shared.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String label;

  const CustomCheckBox({
    Key? key,
    required this.value,
    this.onChanged,
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              label,
              style: KTextStyle.labelStyle,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
