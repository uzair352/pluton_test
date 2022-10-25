import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:influence_me/providers/auth_provider.dart';


import 'drawer_listview_widget.dart';

class MainDrawerWidget extends StatefulWidget {
  @override
  _MainDrawerWidgetState createState() => _MainDrawerWidgetState();
}

class _MainDrawerWidgetState extends State<MainDrawerWidget> {
  // var navigationService = locator<NavigationService>();

  String? tagId = ' ';
  void active(String? val) {
    setState(() {
      tagId = val!;
    });
  }

  List<Map<String?, String?>> data = [
    {
      "id": "0",
      "image": "assets/images/Info Square.png",
      "title": "Homs Screen",
    },
   {
      "id": "1",
      "image": "assets/images/Arrow - Right Square.png",
      "title": "Logout",
    }
  
    // {
    //   "id": "2",
    //   "image": "assets/images/Frame-1.png",
    //   "title": "Fitness Tracker",
    // },
    // {
    //   "id": "2",
    //   "image": "assets/images/Setting.png",
    //   "title": "Setting",
    // },
    // {
    //   "id": "3",
    //   "image": "assets/images/Frame-3.png",
    //   "title": "Account",
    // },
    // {
    //   "id": "4",
    //   "image": "assets/images/Frame.png",
    //   "title": "Help/Support",
    // },
    // {
    //   "id": "5",
    //   "image": "assets/images/Info Square.png",
    //   "title": "About",
    // },
    // {
    //   "id": "6",
    //   "image": "assets/images/Arrow - Right Square.png",
    //   "title": "Logout",
    // }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 270.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  // color: Theme.of(context).backgroundColor,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Group 123.png"),
                      fit: BoxFit.fill),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      // foregroundColor: ,
                      // backgroundColor: Colors.white,
                      radius: 60,
                      backgroundImage: AssetImage(
                        "assets/images/dummy_girl17.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("John Doe",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.add_location,
                        //   color: Color.fromRGBO(162, 159, 202, 1),
                        //   size: 15,
                        // ),
                        Text("johndoe@gmail.com",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //   color: Colors.blue,
                // ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: data.length,
                itemBuilder: (BuildContext context, i) {
                  return DrawerListView(
                    data: data[i],
                    action: active,
                    tag: data[i]['id'],
                    active: tagId == data[i]['id'] ? true : false,
                  );
                },
              ),
            ),

            ///////////////
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                            title: Center(
                                child: Text('version 5.0.2',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(
                                            135, 135, 135, 1))))),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
