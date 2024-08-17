import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_button/view/flashLight_view.dart';
import 'package:toggle_button/view_model/flashLight_view_model.dart';

void main() {
  runApp(AnaSayfa());
}

class AnaSayfa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context)=>FlashViewModel(),
        child: AnaUygulama(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
