import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluton_test/widget/cardlist.dart';
import 'package:pluton_test/widget/column_scrollview.dart';
import 'package:pluton_test/widget/main_drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> cardliist = [
    {
      "id": "1",
      "label": "Listed by",
      "rlabel": "George Fahmy",
      "tlabel": "25 min",
      "title": "Luxury Villa",
      "subtitle":
          "Lorem ipsum dolor sit amet, cosectetuer adipscing elit sed diam nonummy nibh euismod tinncidunt ut laoreet dolor magna aliquam eratvolutpat",
      "mainImg": "assets/images/luxury.jpg",
      "circleImg": "assets/images/square.jpg",
      "color": Color.fromRGBO(72, 189, 151, 1),
    },
    {
      "id": "2",
      "label": "Listed by",
      "rlabel": "George Fahmy",
      "tlabel": "25 min",
      "title": "Luxury Villa",
      "subtitle":
          "Lorem ipsum dolor sit amet, cosectetuer adipscing elit sed diam nonummy nibh euismod tinncidunt ut laoreet dolor magna aliquam eratvolutpat",
      "mainImg": "assets/images/luxury.jpg",
      "circleImg": "assets/images/square.jpg",
      "color": Color.fromRGBO(242, 127, 178, 1),
    }
  ];
  String tagId = ' ';
  void active(
    dynamic val,
  ) {
    setState(() {
      tagId = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawerWidget(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 240, 240, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  icon: Image.asset(
                    'assets/images/drawer_icon.png',
                    scale: 3,
                    color: Colors.black,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "WHAT'S TRENDING",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage("assets/images/dummy_girl17.jpg"),
                fit: BoxFit.cover,
                width: 35,
              ),
            ),
          ),
          SizedBox(
            width: 10.h,
          ),
        ],
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.black,
              ),
            ),
            preferredSize: Size.fromHeight(10)),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ColumnScrollView(
            child: Column(
              children: [
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cardliist.length,
                    itemBuilder: (ctx, i) {
                      return CardList(
                        data: cardliist[i],
                        action: active,
                        tagid: cardliist[i]['id'],
                        active: tagId == cardliist[i]['id'] ? false : true,
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
