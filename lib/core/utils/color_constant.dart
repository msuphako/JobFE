import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray90005 = fromHex('#05363636');

  static Color gray51 = fromHex('#f7fafc');

  static Color red700 = fromHex('#db302e');

  static Color yellow700 = fromHex('#EFBB1A');

  static Color deepPurple500 = fromHex('#5e4ab5');

  static Color darkbutton = fromHex('#1D2030');

  static Color darkContainer = fromHex('#121421');

  static Color darkBg = fromHex('#121421');

  static Color yellow = fromHex('#FFBC42');

  static Color red300 = fromHex('#ff6e73');

  static Color blueA200 = fromHex('#5487e3');

  static Color gray50 = fromHex('#fafafc');

  static Color red50 = fromHex('#ffeded');

  static Color teal600 = fromHex('#0d9e57');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color black900 = fromHex('#0a0a12');

  static Color black90008 = fromHex('#08000000');

  static Color redA701 = fromHex('#fc0f0f');

  static Color redA700 = fromHex('#e30000');

  static Color black90005 = fromHex('#05000000');

  static Color gray402 = fromHex('#c4c4c4');

  static Color gray600 = fromHex('#7a7d85');

  static Color gray30087 = fromHex('#87e6e6e6');

  static Color gray700 = fromHex('#61636b');

  static Color gray400 = fromHex('#b0b0b5');

  static Color black9000a = fromHex('#0a000000');

  static Color pink50 = fromHex('#ffe0e3');

  static Color gray401 = fromHex('#bdbfc2');

  static Color gray500 = fromHex('#94969e');

  static Color gray90005 = fromHex('#050d1426');

  static Color gray90087 = fromHex('#870d0d26');

  static Color indigo50 = fromHex('#dbe6fa');

  static Color gray800 = fromHex('#4a4a4f');

  static Color gray900 = fromHex('#0d0d26');

  static Color bluegray100 = fromHex('#c9c9cf');

  static Color bluegray10087 = fromHex('#87d9d9db');

  static Color green50 = fromHex('#e8fcf2');

  static Color gray300 = fromHex('#e6e6e6');

  static Color orange300 = fromHex('#ffbd42');

  static Color blue50 = fromHex('#edf2fc');

  static Color gray100 = fromHex('#f2f2f2');

  static Color orange100 = fromHex('#ffe0a8');

  static Color deepPurple50 = fromHex('#ebe8f7');

  static Color gray9007e = fromHex('#7e0d0d26');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray101 = fromHex('#d9d9db');

  static Color bluegray1009e = fromHex('#9ed9d9db');

  static Color gray90096 = fromHex('#960d0d26');

  static Color bluegray1007e = fromHex('#7ed9d9db');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7009e = fromHex('#9effffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
