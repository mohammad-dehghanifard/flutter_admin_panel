import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key, required this.onTap,  this.width = 48,  this.height = 40, required this.title,
  });
  final VoidCallback onTap;
  final double width,height;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(context.theme.colorScheme.primary),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
            ),
            minimumSize: MaterialStatePropertyAll(
                Size(width,height)
            )
        ),
        child:  Text(title,style: const TextStyle(color: Colors.white),));
  }
}