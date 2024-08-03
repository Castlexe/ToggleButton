import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_button/view_model/flashLight_view_model.dart';

class AnaUygulama extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toggle Button", style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Consumer<FlashlightViewModel>(
  builder: (context , viewModel , child)=> Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("PRESS ON",style: TextStyle(fontSize: 25),),
        Switch(
            value: viewModel.isOn,
            onChanged: (value) {
              viewModel.toggleFlashlight();
            }
        ),
      ],
    ),
  ),
      ),
    );
  }
}
