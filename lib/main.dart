import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hires/presentation/application_tracking_screen/application_tracking_screen.dart';
import 'package:hires/presentation/apply_screen/apply_screen.dart';

import 'package:hires/presentation/categories_screen/categories_screen.dart';
import 'package:hires/presentation/employer/employee_categories.dart';
import 'package:hires/presentation/employer/employer_home.dart';

import 'package:hires/presentation/employer/employer_register.dart';
import 'package:hires/presentation/employer/interview.dart';
import 'package:hires/presentation/employer/jobapplication.dart';
import 'package:hires/presentation/employer/search_person.dart';
import 'package:hires/presentation/employer/gg.dart';
import 'package:hires/presentation/employer/showoldjobpost.dart';

import 'package:hires/presentation/home_screen/home_screen.dart';

import 'package:hires/presentation/homepage_3_screen/widgets/featured_jobs.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/presentation/job_details_screen/job_details_screen.dart';

import 'package:hires/presentation/log_in_screen/log_in_screen.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';
import 'package:hires/presentation/messages_screen/messages_screen.dart';
import 'package:hires/presentation/profile_style_1_screen/resume.dart';
import 'package:hires/presentation/profile_style_2_screen/profile_style_2_screen.dart';

import 'package:hires/presentation/register_screen/register_screen.dart';
import 'package:hires/presentation/reset_password_confirmation_screen/reset_password_confirmation_screen.dart';
import 'package:hires/presentation/reset_password_screen/reset_password_screen.dart';

import 'package:hires/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:hires/presentation/resume_portfolio_uploading_screen/resume_portfolio_uploading_screen.dart';
import 'package:hires/presentation/saved_screen/SavedScreen.dart';
import 'package:hires/presentation/saved_screen/applyscreen.dart';
import 'package:hires/presentation/saved_screen/interview.dart';
import 'package:hires/presentation/search_option_3_screen/search_option_3_screen.dart';
import 'package:hires/presentation/search_option_3_screen/searchperson.dart';
import 'package:hires/presentation/set_b1_screen/set_b1_screen.dart';
import 'package:hires/presentation/set_b2_screen/set_b2_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hires/presentation/set_b3_screen/set_b3_screen.dart';

import 'package:hires/presentation/settings_screen/settings_screen.dart';
import 'package:hires/presentation/solo_category_job_listing_screen/solo_category_job_listing_screen.dart';
import 'package:hires/presentation/start1_screen/start1_screen.dart';

import 'package:hires/translations/codegen_loader.g.dart';
import 'core/theme/theme_constants.dart';
import 'core/theme/theme_manager.dart';

import 'presentation/employer/showjobpost.dart';
import 'presentation/profile_style_1_screen/profile_style_1_screen.dart';
import 'presentation/register1_screen/register1_screen.dart';
import 'presentation/reset_password1_screen/reset_password1_screen.dart';
import 'presentation/resume_portfolio_uploaded_screen/resume_portfolio_uploaded_screen.dart';
import 'presentation/search_result_2_screen/search_result_2_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:cron/cron.dart';

import 'presentation/verify_screen/verify_screen.dart';

void main() async {
  final cron = Cron();
  cron.schedule(Schedule.parse('0 * * * *'), () async {
    updateStatus();
  });
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(EasyLocalization(
      supportedLocales: [Locale("en"), Locale("ar")],
      path: "assets/translations",
      assetLoader: CodegenLoader(),
      fallbackLocale: Locale('en'),
      child: MyApp()));
}

ThemeManager themeManager = ThemeManager();
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    themeManager.addListener(themeListener);

    super.initState();
  }

  @override
  void dispose() {
    themeManager.removeListener(themeListener);

    super.dispose();
  }

  void themeListener() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeManager.themeMode,
        title: 'JobFE',
        // home: MainPage(),
        initialRoute: Start1Screen.id,
        routes: {
          SearchJobScreen.id: (context) => SearchJobScreen(),
          SearchPerScreen.id: (context) => SearchPerScreen(),
          Profile.id: (context) => Profile(),
          ChatScreen.id: (context) => ChatScreen(
                friendId: '',
                name: '',
              ),
          RegisterScreen.id: (context) => RegisterScreen(),
          Register1Screen.id: (context) => RegisterScreen(),
          LogInScreen.id: (context) => LogInScreen(),
          EmpRegisterScreen.id: (context) => EmpRegisterScreen(),
          EmpHomeScreen.id: (context) => EmpHomeScreen(),
          EmpCategories.id: (context) => EmpCategories(),
          SettingsScreen.id: (context) => SettingsScreen(),
          ShowJobPost.id: (context) => ShowJobPost(),
          ShowOldJobPost.id: (context) => ShowOldJobPost(),

          // HomeScreen.id:(context)=>HomeScreen(),
          CategoriesScreen.id: (context) => CategoriesScreen(),
          SavedScreen.id: (context) => SavedScreen(),
          AppScreen.id: (context) => AppScreen(),
          AppliedScreen.id: (context) => AppliedScreen(),

          ApplicationTrackingScreen.id: (context) =>
              ApplicationTrackingScreen(),
          //       Popular.id:(context)=>Popular(),
          //       SelectLanguage.id:(context)=>SelectLanguage(),
          //       ApplicationsScreen.id:(context)=>ApplicationsScreen(),
          Start1Screen.id: (context) => Start1Screen(),
          // ApplyScreen.id:(context)=>ApplyScreen(),
          // ApplySuccess2Screen.id:(context)=>ApplySuccess2Screen(),
          // CompaniesScreen.id:(context)=>CompaniesScreen(),
          // ForgotPasswordPage.id:(context)=>ForgotPasswordPage(),
          JobDetailsScreen.id: (context) => JobDetailsScreen(),

          //       JobPreferences2Screen.id:(context)=>JobPreferences2Screen(),
          //       JobProposalScreen.id:(context)=>JobProposalScreen(),
          //       JobTypeScreen.id:(context)=>JobTypeScreen(),
          //       JobType1Screen.id:(context)=>JobType1Screen(),
          //       LogInScreen.id:(context)=>LogInScreen(),
          //       LogIn1Screen.id:(context)=>LogIn1Screen(),
          //       LogIn2Screen.id:(context)=>LogIn2Screen(),
          MessagesScreen.id: (context) => MessagesScreen(),
          InterviewScreen.id: (context) => InterviewScreen(),
          InterviewEmployeeScreen.id: (context) => InterviewEmployeeScreen(),
          //       NotificationsScreen.id:(context)=>NotificationsScreen(),
          //       ProfileDropDraweritem.id:(context)=>ProfileDropDraweritem(),
          ProfileStyle1Screen.id: (context) => ProfileStyle1Screen(),
          ProfileStyle2Screen.id: (context) => ProfileStyle2Screen(),
          //       RegisterScreen.id:(context)=>RegisterScreen(),
          //       Register1Screen.id:(context)=>RegisterScreen(),
          ResetPasswordConfirmationScreen.id: (context) =>
              ResetPasswordConfirmationScreen(),
          ResetPasswordScreen.id: (context) => ResetPasswordScreen(),
          //       PopularJobes.id:(context)=>PopularJobes(),
          ResetPassword1Screen.id: (context) => ResetPassword1Screen(),
          ResumePortfolioUploadScreen.id: (context) =>
              ResumePortfolioUploadScreen(),
          ResumePortfolioUploadedScreen.id: (context) =>
              ResumePortfolioUploadedScreen(),
          ResumePortfolioUploadingScreen.id: (context) =>
              ResumePortfolioUploadingScreen(),
          //       SearchOption3Screen.id:(context)=>SearchOption3Screen(),
          SetB1Screen.id: (context) => SetB1Screen(),
          SetB2Screen.id: (context) => SetB2Screen(),
          SetB3Screen.id: (context) => SetB3Screen(),
          //       SetB4GetStartedScreen.id:(context)=>SetB4GetStartedScreen(),
          //       SetB4GetStarted1Screen.id:(context)=>SetB4GetStarted1Screen(),
          FeaturedJobes.id: (context) => FeaturedJobes(),
          //       SetB4Screen.id:(context)=>SetB4Screen(),
          //       SetB5Screen.id:(context)=>SetB5Screen(),
          //       SetB6Screen.id:(context)=>SetB6Screen(),
          //       VerifyScreen.id:(context)=>VerifyScreen(),
          //       Verify1Screen.id:(context)=>Verify1Screen(),
          // Homepage3Screen.id:(context)=>Homepage3Screen(),
          SearchResultPerson.id: (context) => SearchResultPerson({}),
          SearchResult2Screen.id: (context) => SearchResult2Screen("", [], ""),

          //       SearchfilterbottomsheetPage.id:(context)=>SearchfilterbottomsheetPage(),
          SoloCategoryJobListingScreen.id: (context) =>
              SoloCategoryJobListingScreen(),
          //       Trending.id:(context)=>Trending(),
        });

    // Widget build(BuildContext context) {
    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     localizationsDelegates: context.localizationDelegates,
    //     supportedLocales: context.supportedLocales,
    //     locale: context.locale,
    //     theme: lightTheme,
    //     darkTheme: darkTheme,
    //     themeMode:themeManager.themeMode ,
    //     title: 'hires',
    //     initialRoute:Start1Screen.id ,
    //     routes: {
    //       ApplicationTrackingScreen.id:(context)=>ApplicationTrackingScreen(),
    //       Popular.id:(context)=>Popular(),
    //       SelectLanguage.id:(context)=>SelectLanguage(),
    //       ApplicationsScreen.id:(context)=>ApplicationsScreen(),
    //       Start1Screen.id:(context)=>Start1Screen(),
    //       ApplyScreen.id:(context)=>ApplyScreen(),
    //       ApplySuccess2Screen.id:(context)=>ApplySuccess2Screen(),
    //       CategoriesScreen.id:(context)=>CategoriesScreen(),
    //       CompaniesScreen.id:(context)=>CompaniesScreen(),
    //       ForgotPasswordPage.id:(context)=>ForgotPasswordPage(),
    //       JobDetailsScreen.id:(context)=>JobDetailsScreen(),
    //       JobDetails1Screen.id:(context)=>JobDetails1Screen(),
    //       JobPreferences2Screen.id:(context)=>JobPreferences2Screen(),
    //       JobProposalScreen.id:(context)=>JobProposalScreen(),
    //       JobTypeScreen.id:(context)=>JobTypeScreen(),
    //       JobType1Screen.id:(context)=>JobType1Screen(),
    //       LogInScreen.id:(context)=>LogInScreen(),
    //       LogIn1Screen.id:(context)=>LogIn1Screen(),
    //       LogIn2Screen.id:(context)=>LogIn2Screen(),
    //       MessagesScreen.id:(context)=>MessagesScreen(),
    //       NotificationsScreen.id:(context)=>NotificationsScreen(),
    //       ProfileDropDraweritem.id:(context)=>ProfileDropDraweritem(),
    //       ProfileStyle1Screen.id:(context)=>ProfileStyle1Screen(),
    //       ProfileStyle2Screen.id:(context)=>ProfileStyle2Screen(),
    //       RegisterScreen.id:(context)=>RegisterScreen(),
    //       Register1Screen.id:(context)=>RegisterScreen(),
    //       ResetPasswordConfirmationScreen.id:(context)=>ResetPasswordConfirmationScreen(),
    //       ResetPasswordScreen.id:(context)=>ResetPasswordScreen(),
    //       PopularJobes.id:(context)=>PopularJobes(),
    //       ResetPassword1Screen.id:(context)=>ResetPassword1Screen(),
    //       ResumePortfolioUploadScreen.id:(context)=>ResumePortfolioUploadScreen(),
    //       ResumePortfolioUploadedScreen.id:(context)=>ResumePortfolioUploadedScreen(),
    //       ResumePortfolioUploadingScreen.id:(context)=>ResumePortfolioUploadingScreen(),
    //       SearchOption3Screen.id:(context)=>SearchOption3Screen(),
    //       SetB1Screen.id:(context)=>SetB1Screen(),
    //       SetB2Screen.id:(context)=>SetB2Screen(),
    //       SetB3Screen.id:(context)=>SetB3Screen(),
    //       SetB4GetStartedScreen.id:(context)=>SetB4GetStartedScreen(),
    //       SetB4GetStarted1Screen.id:(context)=>SetB4GetStarted1Screen(),
    //       FeaturedJobes.id:(context)=>FeaturedJobes(),
    //       SetB4Screen.id:(context)=>SetB4Screen(),
    //       SetB5Screen.id:(context)=>SetB5Screen(),
    //       SetB6Screen.id:(context)=>SetB6Screen(),
    //       SettingsScreen.id:(context)=>SettingsScreen(),
    //       VerifyScreen.id:(context)=>VerifyScreen(),
    //       Verify1Screen.id:(context)=>Verify1Screen(),
    //       Homepage3Screen.id:(context)=>Homepage3Screen(),
    //       HomeScreen.id:(context)=>HomeScreen(),
    //       SearchResult2Screen.id:(context)=>SearchResult2Screen(),
    //       SearchfilterbottomsheetPage.id:(context)=>SearchfilterbottomsheetPage(),
    //       SoloCategoryJobListingScreen.id:(context)=>SoloCategoryJobListingScreen(),
    //       Trending.id:(context)=>Trending(),
    //     },
    //   );
    // }
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (FirebaseAuth.instance.currentUser!.emailVerified) {
                return HomeScreen();
              } else {
                return VerifyScreen();
              }
            } else {
              return LogInScreen();
            }
          },
        ),
      );
}

void updateStatus() async {
  // Retrieve the documents with a due date that has passed the current date and time
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collectionGroup('jobPost')
      .where('due_date', isLessThan: DateTime.now())
      .get();

  // Update the status field of each document
  for (DocumentSnapshot doc in snapshot.docs) {
    doc.reference.update({'status': 'สิ้นสุดประกาศ'});
  }
}
