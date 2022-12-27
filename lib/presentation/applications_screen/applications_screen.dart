import '../applications_screen/widgets/applications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class ApplicationsScreen extends StatefulWidget {
  static String id = "ApplicationsScreen";

  @override
  State<ApplicationsScreen> createState() => _ApplicationsScreenState();
}

class _ApplicationsScreenState extends State<ApplicationsScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Applications",
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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getHorizontalSize(16),
                vertical: getVerticalSize(12)),
            child: Container(
              height: getVerticalSize(
                30.00,
              ),
              width: getHorizontalSize(
                33.00,
              ),
              margin: EdgeInsets.only(
                top: getVerticalSize(
                  1.00,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          2.00,
                        ),
                      ),
                      child: Container(
                        height: getSize(
                          30.00,
                        ),
                        width: getSize(
                          30.00,
                        ),
                        decoration: BoxDecoration(
                            color: isDark
                                ? ColorConstant.yellow
                                : ColorConstant.red300,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(8),
                            )),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                        right: getHorizontalSize(
                          2.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgBusinessmanho,
                        height: getSize(
                          30.00,
                        ),
                        width: getSize(
                          30.00,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: getHorizontalSize(4),
                          vertical: getVerticalSize(4)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDark
                              ? ColorConstant.darkBg
                              : ColorConstant.whiteA700),
                      child: Container(
                        height: getSize(
                          6.00,
                        ),
                        width: getSize(
                          6.00,
                        ),
                        decoration: BoxDecoration(
                            color: ColorConstant.redA701,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: getHorizontalSize(
                      211.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        34.00,
                      ),
                      right: getHorizontalSize(
                        140.00,
                      ),
                    ),
                    child: Text(
                      "You have\n27 Applications 👍",
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(60),
                  padding: EdgeInsets.only(top: getVerticalSize(24)),
                  child: TabBar(
                      padding: EdgeInsets.only(
                          left: getHorizontalSize(20),
                          right: getHorizontalSize(20)),
                      controller: tabController,
                      isScrollable: true,
                      labelColor: ColorConstant.whiteA700,
                      unselectedLabelColor: ColorConstant.teal600,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      indicator: BoxDecoration(
                          color: ColorConstant.teal600,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(100))),
                      tabs: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConstant.teal600),
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(25)),
                            ),
                            child: Tab(
                              text: 'All',
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConstant.teal600),
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(25)),
                            ),
                            child: Tab(
                              text: 'Delivered',
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConstant.teal600),
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(25)),
                            ),
                            child: Tab(
                              text: 'Reviewing',
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConstant.teal600),
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(25)),
                            ),
                            child: Tab(
                              text: 'Manager',
                            )),
                      ]),
                ),
                Container(
                  height: getVerticalSize(600),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              43.00,
                            ),
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ApplicationsItemWidget();
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              40.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              43.00,
                            ),
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ApplicationsItemWidget();
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              40.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              43.00,
                            ),
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ApplicationsItemWidget();
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              10.00,
                            ),
                            top: getVerticalSize(
                              40.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              43.00,
                            ),
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ApplicationsItemWidget();
                            },
                          ),
                        ),
                      ),
                    ],
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
