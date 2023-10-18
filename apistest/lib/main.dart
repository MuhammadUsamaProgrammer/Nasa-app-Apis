import 'package:apistest/app/just_test/user_APIs/viewModel/userViewModel.dart';
import 'package:apistest/app/routs/rout_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;
import 'app/common/animated_Button/provider/animated_Button_Provider.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'app/nASA_App_Test/mars_Landing/all_ROvers/provider/animated_Container_Provider.dart';
import 'app/nASA_App_Test/picture_Of_The_Day/viewModel/calenderProvider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => AnimatedButtonProvider()),
        ChangeNotifierProvider(create: (_) => AnimatedContainerProvider()),
        ChangeNotifierProvider(create: (_) => Calendar()),
        // ChangeNotifierProvider(create: (_) => AnimatedButtonProvider()),
        // ChangeNotifierProvider(create: (_) => AnimatedButtonProvider()),
        // ChangeNotifierProvider(create: (_) => AnimatedButtonProvider()),
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        getPages: AppRouts.routs,
      ),
    );
  }
}
