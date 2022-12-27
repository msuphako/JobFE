import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:timelines/timelines.dart';


class TimeLine extends StatefulWidget {

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  
 @override
Widget build(BuildContext context) {
  return FixedTimeline.tileBuilder(
    theme:TimelineThemeData(
      
      color: ColorConstant.teal600,
      nodePosition: .1,
      indicatorPosition: .1,
    
      indicatorTheme: IndicatorThemeData(size: getSize(20),
      color: ColorConstant.teal600,)

      
      
      
    ),
    
    
  
builder: TimelineTileBuilder.connectedFromStyle(

  
  

connectionDirection: ConnectionDirection.after,
connectorStyleBuilder: (context, index) {
return (index == 0) ? ConnectorStyle.dashedLine : ConnectorStyle.solidLine;
},
// nodePositionBuilder: (context,index){
//   return .1;
// },



indicatorStyleBuilder: (context, index) {
  return (index == 0) ? IndicatorStyle.outlined:IndicatorStyle.dot;
},

itemExtent: 100.0,
itemCount: 5,

contentsBuilder: (context, index) => Container(
child: Padding(
padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(12),
vertical: getVerticalSize(10)),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
        Text('Application submitted',
        style:  TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),),
   SizedBox(height: getVerticalSize(8)),
  
  SizedBox(
    width: getHorizontalSize(100),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text('17/05/22',
        style:  TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                color: ColorConstant.gray400,
                                                fontWeight: FontWeight.w400,
                                              ),),

                                               Text('11:00 am',
        style:  TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                color: ColorConstant.gray400,
                                                fontWeight: FontWeight.w400,
                                              ),),
  
      ],
    ),
  )
  
  ],
),
),
),
),

);
  
}}