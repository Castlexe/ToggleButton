import 'package:flutter/cupertino.dart';
import 'package:toggle_button/model/flashLight_model.dart';

class FlashlightViewModel with ChangeNotifier {

  FlashlightModel _flashlightModel = FlashlightModel(isOn: false);

  bool get isOn => _flashlightModel.isOn;

  void toggleFlashlight() {
    _flashlightModel.isOn = !_flashlightModel.isOn;
    notifyListeners();
  }
}