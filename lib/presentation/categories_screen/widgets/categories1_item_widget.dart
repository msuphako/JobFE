import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/solo_category_job_listing_screen/solo_category_job_listing_screen.dart';


// ignore: must_be_immutable
class Categories1ItemWidget extends StatelessWidget {
  Categories1ItemWidget();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, SoloCategoryJobListingScreen.id);
        },
        child: isDark? darkCustomContainer(
               
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          39.00,
                        ),
                        top: getVerticalSize(
                          20.00,
                        ),
                        right: getHorizontalSize(
                          39.00,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            116.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgRectangle1144,
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          39.00,
                        ),
                        top: getVerticalSize(
                          16.00,
                        ),
                        right: getHorizontalSize(
                          39.00,
                        ),
                        bottom: getVerticalSize(
                          17.00,
                        ),
                      ),
                      child: Text(
                        "Accountant",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ):lightCostumContainer(
               
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          39.00,
                        ),
                        top: getVerticalSize(
                          20.00,
                        ),
                        right: getHorizontalSize(
                          39.00,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            116.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgRectangle1144,
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          39.00,
                        ),
                        top: getVerticalSize(
                          16.00,
                        ),
                        right: getHorizontalSize(
                          39.00,
                        ),
                        bottom: getVerticalSize(
                          17.00,
                        ),
                      ),
                      child: Text(
                        "Accountant",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  
  
  }
}
