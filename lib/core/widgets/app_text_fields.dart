import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:get/get.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key, this.hint,
  });
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: context.theme.colorScheme.secondary,
          suffixIcon: Container(
            margin: const EdgeInsets.all(8),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius - 8),
                color: context.theme.colorScheme.primary
            ),
            child: const Icon(Icons.search),
          ),
          hintText: hint,
          hintStyle: context.textTheme.bodySmall,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide.none
          )
      ),
    );
  }
}