import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/modules/main/widgets/drawer_widget.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // DashBoard
            const Expanded(child: DrawerWidget()),
            // main card
            Expanded(
              flex: 5,
                child: Container(
                  color: Colors.red,
                )
            ),
          ],
        ),
      ),
    );
  }
}



