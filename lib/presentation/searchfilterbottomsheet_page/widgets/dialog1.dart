import 'package:flutter/material.dart';
import 'package:hires/core/utils/color_constant.dart';
import '../../../core/utils/math_utils.dart';

class Dialog1 extends StatefulWidget {
  const Dialog1({ Key? key }) : super(key: key);

  @override
  State<Dialog1> createState() => _Dialog1State();
}

class _Dialog1State extends State<Dialog1> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: getVerticalSize(14),
      horizontal: getHorizontalSize(4)),
      child: GestureDetector(
        onTap: (){
          setState(() {
            checkBoxVal=!checkBoxVal;
          });
        },
        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text("Entery level , Mid Level"
                          ,style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                          ),
                          Container(
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                              child: Transform.scale(
                                scale: 1.3,
                                child: Checkbox(
                                                    activeColor: ColorConstant.blueA200,
                                                     side: BorderSide(
                                                        color: ColorConstant.gray300,
                                                        width: getHorizontalSize(
                                                          1.00,
                                                        ),
                                                      ),
                                                    shape: RoundedRectangleBorder(
                                                     
                                                      borderRadius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                      
                                                          20.00,
                                                        ),
                                                      ),
                                                    ),
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize.shrinkWrap,
                                                    value: checkBoxVal,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        checkBoxVal=!checkBoxVal;
                                                      });
                                                    },
                                                  ),
                              ),
                          
                          
                            ),
                         
                          
                      ],),
      ),
    ) ;
        
  }
}