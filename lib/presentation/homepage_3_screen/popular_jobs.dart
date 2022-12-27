import 'package:flutter/material.dart';
import 'package:hires/presentation/homepage_3_screen/widgets/group568_item_widget.dart';
import '../../core/utils/math_utils.dart';

class PopularJobes extends StatelessWidget {
  static String id = "PopularJobes";
  const PopularJobes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular Jobes",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                18.00,
              ),
              right: getHorizontalSize(
                18.00,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: Icon(Icons.arrow_back_ios,
                      size: getSize(20),
                      color: isDark ? Colors.white : Colors.black)),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(),
        child: ListView.builder(
          padding: EdgeInsets.only(top: getVerticalSize(30)),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Group568ItemWidget();
          },
        ),
      ),
    );
  }
}
