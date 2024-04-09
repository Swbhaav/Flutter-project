import 'package:flutter/material.dart';

import '../../constants/colors.dart';

///Custom Theme for checkbox class
class VCheckboxTheme{
  VCheckboxTheme._();

///For light theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
    checkColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return VColors.white;
      }else{
        return VColors.black;
      }
    },),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return VColors.buttonPrimary;
      }else{
        return Colors.transparent;
      }
    })
  );

  ///Dark Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
      checkColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.selected)){
          return VColors.white;
        }else{
          return VColors.black;
        }
      },),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){
          return VColors.buttonPrimary;
        }else{
          return Colors.transparent;
        }
      })

  );
}