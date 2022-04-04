import 'package:flutter/material.dart';

import '../shared/shared.dart';

class CustomTextFormField extends StatelessWidget {
  final Icon? icon;
  final Widget? suffix;
  final bool obsecureText;
  final String? hintText;
  final void Function(String)? onChanged;
  final Color fillColor;

  const CustomTextFormField({
    Key? key,
    this.icon,
    this.obsecureText = false,
    this.hintText,
    this.onChanged,
    this.suffix,
    this.fillColor = KColors.primaryBg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obsecureText,
        cursorColor: KColors.primaryLight,
        style: KTextStyle.inputStyle,
        decoration: InputDecoration(
          suffix: suffix,
          focusColor: KColors.primaryLight,
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: KTextStyle.bodyStyle,
          fillColor: fillColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
