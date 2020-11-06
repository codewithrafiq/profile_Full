import 'package:flutter/material.dart';

class DroairPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
              )
            ],
          )
        ],
      ),
    );
  }
}
