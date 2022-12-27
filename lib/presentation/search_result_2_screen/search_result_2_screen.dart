import 'package:easy_localization/easy_localization.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/search_result_2_screen/widgets/jobcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SearchResult2Screen extends StatefulWidget {
  static String id = "SearchResult2Screen";

  @override
  State<SearchResult2Screen> createState() => _SearchResult2ScreenState();
}

class _SearchResult2ScreenState extends State<SearchResult2Screen> {
  List<Object> _datajobs = [];

  Future fetchjobsdata() async {
    var data = await db.collectionGroup("jobPost").get();
    setState(() {
      _datajobs = List.from(data.docs.map((doc) => Job.fromSnapshot(doc)));
    });
  }

  @override
  void initState() {
    fetchjobsdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int total = _datajobs.length;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Solfware Engineer",
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
          centerTitle: false,
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
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getHorizontalSize(16),
                  vertical: getVerticalSize(18)),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: getSize(
                    18.00,
                  ),
                  width: getSize(
                    18.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgAkariconscros4,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
          backgroundColor: isDark ? ColorConstant.darkContainer : Colors.white),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark ? ColorConstant.darkContainer : ColorConstant.whiteA700,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  10.00,
                ),
                right: getHorizontalSize(
                  24.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray402,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  24.00,
                ),
                bottom: getVerticalSize(
                  16.00,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: context.locale == Constants.engLocal
                          ? getHorizontalSize(
                              24.00,
                            )
                          : getHorizontalSize(0),
                      right: context.locale == Constants.arLocal
                          ? getHorizontalSize(
                              24.00,
                            )
                          : getHorizontalSize(0),
                    ),
                    child: Text(
                      "$total Jobs Found",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.teal600,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        4.00,
                      ),
                      left: context.locale == Constants.engLocal
                          ? getHorizontalSize(
                              0.00,
                            )
                          : getHorizontalSize(24),
                      right: context.locale == Constants.arLocal
                          ? getHorizontalSize(
                              0.00,
                            )
                          : getHorizontalSize(24),
                      bottom: getVerticalSize(
                        3.00,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        14.00,
                      ),
                      width: getHorizontalSize(
                        12.60,
                      ),
                      child: SvgPicture.asset(
                        ImageConstant.imgIconlylightfi,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: getVerticalSize(10)),
                shrinkWrap: true,
                itemCount: _datajobs.length,
                itemBuilder: (context, index) {
                  return JobCard(_datajobs[index] as Job);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
