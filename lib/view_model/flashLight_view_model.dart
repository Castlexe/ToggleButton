import 'package:flutter/material.dart';
import 'package:toggle_button/model/flashLight_model.dart';
import 'package:torch_light/torch_light.dart';

class FlashViewModel extends ChangeNotifier {
  FlashModel _flashModel = FlashModel();

  bool get isFlashOn => _flashModel.isFlashOn;

  Future<void> toggleFlash() async {
    try {
      if (_flashModel.isFlashOn) {
        await TorchLight.disableTorch();
      } else {
        await TorchLight.enableTorch();
      }
      _flashModel.isFlashOn = !_flashModel.isFlashOn;
      notifyListeners();
    } catch (e) {
      print("Torch Light Error: $e");
    }
  }
}