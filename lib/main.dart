import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test/screen/splash_screen.dart';
import 'package:pluton_test/services/navigation_service.dart';
import 'package:pluton_test/utils/route.dart';
import 'package:pluton_test/utils/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   tools: [
    //     ...DevicePreview.defaultTools,
      
    //   ],
    //   builder: (context) => const MyApp(),
    // ),
    const MyApp()
     );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: ((context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            navigatorKey: locator<NavigationService>().navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            // home: SplashScreen(),
            onGenerateRoute: onGenerateRoute,
            initialRoute: SplashScreenRoute,
          );
        }));
  }
}
