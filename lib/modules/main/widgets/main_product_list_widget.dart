import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';
import 'package:get/get_utils/get_utils.dart';

class MainProductListWidget extends StatelessWidget {
  const MainProductListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: context.theme.colorScheme.secondary
      ),
    ));
  }
}

