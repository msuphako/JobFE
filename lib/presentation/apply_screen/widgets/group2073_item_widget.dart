import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';

// ignore: must_be_immutable
class Group2073ItemWidget extends StatefulWidget {

  Group2073ItemWidget();

  @override
  State<Group2073ItemWidget> createState() => _Group2073ItemWidgetState();
}

class _Group2073ItemWidgetState extends State<Group2073ItemWidget> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return IntrinsicWidth(
      child: Container(
         height: getSize(
          202.00,
        ),
        width: getSize(
          155.00,
        ),
        margin: EdgeInsets.only(
          right: getHorizontalSize(17)
        ),
        child:isDark? darkCustomContainer(
         
         
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                   
                    top: getVerticalSize(
                      20.00,
                    ),
                   
                    bottom: getVerticalSize(
                      17.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getSize(
                            72.00,
                          ),
                          width: getSize(
                            72.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              15.00,
                            ),
                            right: getHorizontalSize(
                              15.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.deepPurple50,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                36.00,
                              ),
                            ),
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: ColorConstant.deepPurple50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  36.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getSize(
                                        36.00,
                                      ),
                                    ),
                                    child: Image.asset(
                                      ImageConstant.imgChristinawocin8,
                                      height: getSize(
                                        72.00,
                                      ),
                                      width: getSize(
                                        72.00,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getSize(
                                      72.00,
                                    ),
                                    width: getSize(
                                      72.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgMaskgroup20,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            8.00,
                          ),
                        ),
                        child: Text(
                          "Haley Jessica",
                         
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              15.00,
                            ),
                            top: getVerticalSize(
                              4.00,
                            ),
                            right: getHorizontalSize(
                              14.74,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "UX Designer",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray500,
                                  fontSize: getFontSize(
                                    10,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    4.26,
                                  ),
                                  top: getVerticalSize(
                                    5.00,
                                  ),
                                  right: getHorizontalSize(
                                    0.00,
                                  ),
                                  bottom: getVerticalSize(
                                    2.00,
                                  ),
                                ),
                                child: Container(
                                  height: getSize(
                                    9.00,
                                  ),
                                  width: getSize(
                                    9.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcroundverifi7,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                    top: getVerticalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      16.00,
                    ),
                    bottom: getVerticalSize(
                      16.00,
                    ),
                  ),
                  child: Container(
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
                ),
              ),
            ],
          ),
        ):lightCostumContainer(
         
         
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                     
                      top: getVerticalSize(
                        20.00,
                      ),
                     
                      bottom: getVerticalSize(
                        17.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getSize(
                              72.00,
                            ),
                            width: getSize(
                              72.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                15.00,
                              ),
                              right: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.deepPurple50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  36.00,
                                ),
                              ),
                            ),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.deepPurple50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    36.00,
                                  ),
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getSize(
                                          36.00,
                                        ),
                                      ),
                                      child: Image.asset(
                                        ImageConstant.imgChristinawocin8,
                                        height: getSize(
                                          72.00,
                                        ),
                                        width: getSize(
                                          72.00,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getSize(
                                        72.00,
                                      ),
                                      width: getSize(
                                        72.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgMaskgroup20,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              8.00,
                            ),
                          ),
                          child: Text(
                            "Haley Jessica",
                           
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                15.00,
                              ),
                              top: getVerticalSize(
                                4.00,
                              ),
                              right: getHorizontalSize(
                                14.74,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "UX Designer",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      4.26,
                                    ),
                                    top: getVerticalSize(
                                      5.00,
                                    ),
                                    right: getHorizontalSize(
                                      0.00,
                                    ),
                                    bottom: getVerticalSize(
                                      2.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      9.00,
                                    ),
                                    width: getSize(
                                      9.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIcroundverifi7,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        16.00,
                      ),
                      top: getVerticalSize(
                        16.00,
                      ),
                      right: getHorizontalSize(
                        16.00,
                      ),
                      bottom: getVerticalSize(
                        16.00,
                      ),
                    ),
                    child: Container(
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
                 
                 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
