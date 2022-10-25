import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pluton_test/utils/route.dart';
import '../services/storage_service.dart';

import '../services/navigation_service.dart';
import '../utils/service_locator.dart';
// import '../widgets/exit_alert_dialog.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var navigationService = locator<NavigationService>();
  var storageService = locator<StorageService>();

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      // try {
      //   var token = await this.storageService.getData("token");
      //   if (token != null) {
      //     var user = await this.storageService.getData("user");
      //     Provider.of<AuthProvider>(context, listen: false).setuser(user);
      //     await Provider.of<AuthProvider>(context, listen: false)
      //         .fetchFormData(user['id']);
      //     Future.delayed(Duration(seconds: 2));
      //     navigationService.navigateTo(HistoryScreenRoute);
      //   } else {

      //     navigationService.navigateTo(LoginScreenRoute);
      //   }

      // } catch (err) {
      navigationService.navigateTo(HomeScreenRoute);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Future<bool> _onBackPressed() {
    //   return showDialog(
    //         context: context,
    //         builder: (context) => ExitAlertDialog(),
    //       ) ??
    //       false;
    // }

    return WillPopScope(
      onWillPop: null,
      child: Stack(
          // fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/luxury.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            // Positioned(
            //   child: Align(
            //       alignment: FractionalOffset.center,
            //       child: Container(
            //         child:
            //             // Container(child: Image.asset('assets/images/logo.png')),
            //             ShowUpAnimation(
            //           delayStart: Duration(milliseconds: 200),
            //           animationDuration: Duration(seconds: 1),
            //           curve: Curves.bounceIn,
            //           direction: Direction.vertical,
            //           offset: 0.7,
            //           child: Image.asset(
            //             'assets/images/splash-logo.png',
            //             scale: 3.5,
            //           ),
            //         ),
            //       )),
            // ),
          ]),
    );
  }
}
