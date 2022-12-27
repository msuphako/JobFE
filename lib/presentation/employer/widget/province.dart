import 'package:flutter/material.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/math_utils.dart';

class ProvinceDialog extends StatefulWidget {
  final String provinceList;
  ProvinceDialog(this.provinceList);
  @override
  State<ProvinceDialog> createState() => _ProvinceDialogState();
}

class _ProvinceDialogState extends State<ProvinceDialog> {
  bool checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getVerticalSize(14), horizontal: getHorizontalSize(4)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            checkBoxVal = !checkBoxVal;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                widget.provinceList,
                style: TextStyle(
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
