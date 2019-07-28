import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonUtils{


  static void hideKeyboard(){
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  static void changeFocus(BuildContext context){
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}