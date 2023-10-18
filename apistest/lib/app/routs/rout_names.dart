import 'package:apistest/app/routs/routs.dart';
import 'package:get/get.dart';
import '../nASA_App_Test/LandingScreen/view/app_Landing_screen.dart';
import '../nASA_App_Test/mars_Landing/all_ROvers/view/all_Rovers_Page.dart';
import '../nASA_App_Test/mars_Landing/image&Discoveries/view/image&Discovries_View.dart';
import '../nASA_App_Test/mars_Landing/rover_Detail/view/detailed_Rover.dart';
import '../nASA_App_Test/picture_Of_The_Day/view/full_Screen_Image.dart';
import '../nASA_App_Test/picture_Of_The_Day/view/scaffold.dart';
import '../post_Api/view/post_Api_TestScreen.dart';
import '../splash/view/splash.dart';
import '../splash/viewModel/splash_view_model.dart';

class AppRouts {
  static final routs = [
    //splash screen
    GetPage(
      name: RouteName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.rightToLeft,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(() => SplashViewModel());
      }),
    ),

    //LandingPage
    GetPage(
      name: RouteName.landingPage,
      page: () => LandingPage(),
      transition: Transition.rightToLeft,
    ),

    //signUpPage
    GetPage(
      name: RouteName.allRoverPage,
      page: () => AllRoverPage(),
      transition: Transition.rightToLeft,
    ),

    //DetailedRover
    GetPage(
      name: RouteName.detailedRover,
      page: () => DetailedRover(),
      transition: Transition.rightToLeft,
    ),

    //forget ImageAndDiscovriesPage
    GetPage(
      name: RouteName.imageAndDiscovriesPage,
      page: () => ImageAndDiscovriesPage(),
      transition: Transition.rightToLeft,
    ),

    //PictureOfTheDayPage
    GetPage(
      name: RouteName.pictureOfTheDayPage,
      page: () => PictureOfTheDayPage(),
      transition: Transition.rightToLeft,
    ),

    // //FullScreenImage
    GetPage(
      name: RouteName.fullScreenImage,
      page: () => FullScreenImage(),
      transition: Transition.rightToLeft,
    ),

    // PostScreen Page
    GetPage(
      name: RouteName.postScreen,
      page: () => PostScreen(),
      transition: Transition.rightToLeft,
    ),

    // // //bottom nav bar page
    // GetPage(
    //   name: RouteName.bottomNavBar,
    //   page: () => BottomNavBar(),
    //   transition: Transition.rightToLeft,
    // ),
  ];
}
