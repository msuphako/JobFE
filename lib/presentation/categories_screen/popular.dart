import 'package:flutter/material.dart';
import 'package:hires/presentation/categories_screen/widgets/categories_item_widget.dart';
import '../../core/utils/math_utils.dart';

class Popular extends StatelessWidget {
  static String id = "Popular";
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular",
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
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            24.00,
          ),
          top: getVerticalSize(
            18.00,
          ),
          right: getHorizontalSize(
            24.00,
          ),
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: getVerticalSize(
              140.00,
            ),
            crossAxisCount: 2,
            mainAxisSpacing: getHorizontalSize(
              0.00,
            ),
            crossAxisSpacing: getHorizontalSize(
              8.00,
            ),
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return CategoriesItemWidget();
          },
        ),
      ),
    );
  }
}
