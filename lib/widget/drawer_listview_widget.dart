
import 'package:flutter/material.dart';
import 'package:pluton_test/utils/route.dart';

import '../services/navigation_service.dart';
import '../utils/service_locator.dart';

// ignore: must_be_immutable
class DrawerListView extends StatefulWidget {
  final String? imageUrl;
  final data;
  final String? name;
  bool? active;
  ValueChanged<String>? action;
  final String? tag;
  DrawerListView(
      {this.imageUrl,
      this.name,
      this.tag,
      this.action,
      this.active,
      this.data});
  @override
  _DrawerListViewState createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  var navigationService = locator<NavigationService>();
  void handleTap() async {
    setState(() {
      widget.action!(widget.tag!);
    });
    if (widget.tag! == '0') {
     
      navigationService.navigateTo(HomeScreenRoute);
      // navigationService.navigateTo(CurrentChallengesRoute);
    }
    // if (widget.tag == '1') {
    //   navigationService.navigateTo(CurrentChallengesRoute);
    // }
    // // if (widget.tag! == '2') {
    // //   navigationService.navigateTo(CurrentChallengesRoute);
    // // }
    // if (widget.tag! == '2') {
    //   navigationService.navigateTo(SetChallengeScreenRoute);
    // }
    // if (widget.tag! == '3') {
    //   navigationService.navigateTo(MyProfileScreenRoute);
    // }
    // if (widget.tag! == '4') {
    //   navigationService.navigateTo(CurrentChallengesRoute);
    // }
    // if (widget.tag! == '5') {
    //   navigationService.navigateTo(AboutUsScreenRoute);
    // }
    // if (widget.tag! == '6') {
    //   navigationService.navigateTo(LoginScreenRoute);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.active!
          ? BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(87, 46, 0, 1),
                Color.fromRGBO(16, 12, 0, 1),
                //  Color.fromRGBO(254, 88, 102, 1),
                // Color.fromRGBO(250, 87, 151, 1),
              ],
            ))
          : BoxDecoration(color: Colors.transparent),
      child: ListTile(
        leading: ImageIcon(
          AssetImage(
            widget.data["image"],
          ),
          color:
              widget.active! ? Colors.white : Color.fromRGBO(102, 102, 102, 1),
        ),
        title: Text(widget.data['title'],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: widget.active!
                    ? Colors.white
                    : Color.fromRGBO(102, 102, 102, 1))),

        onTap: () {
          handleTap();
        },
        // navigationService.navigateTo(InfluncersScreenRoute);
      ),
    );
  }
}
