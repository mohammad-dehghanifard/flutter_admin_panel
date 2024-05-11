import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(defaultRadius))
            ),
            minimumSize: MaterialStatePropertyAll(
                Size(width.w,height.h)
            )
        ),
        child:  Text(title,style: const TextStyle(color: Colors.white),));
  }
}