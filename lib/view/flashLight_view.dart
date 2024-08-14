import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_button/view_model/flashLight_view_model.dart';

class AnaUygulama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flashViewModel = Provider.of<FlashViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flashlight",style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Switch(
          value: flashViewModel.isFlashOn,
          onChanged: (value) {
            flashViewModel.toggleFlash();
          },
        ),
      ),
    );
  }
}
