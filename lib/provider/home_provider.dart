import 'package:flutter/cupertino.dart';
import 'package:pluton_test/model/cardDetail.dart';

class HomProvider extends ChangeNotifier {
  List<CardDetail> _cardliist = [
    CardDetail(
      id: "1",
      label: "Listed by",
      rlabel: "George Fahmy",
      tlabel: "25 min",
      title: "Luxury Villa",
      subtitle:
          "Lorem ipsum dolor sit amet, cosectetuer adipscing elit sed diam nonummy nibh euismod tinncidunt ut laoreet dolor magna aliquam eratvolutpat",
      mainImg: "assets/images/luxury.jpg",
      circleImg: "assets/images/square.jpg",
      color: Color.fromRGBO(72, 189, 151, 1),
    ),
    CardDetail(
      id: "1",
      label: "Listed by",
      rlabel: "George Fahmy",
      tlabel: "25 min",
      title: "Luxury Villa",
      subtitle:
          "Lorem ipsum dolor sit amet, cosectetuer adipscing elit sed diam nonummy nibh euismod tinncidunt ut laoreet dolor magna aliquam eratvolutpat",
      mainImg: "assets/images/luxury.jpg",
      circleImg: "assets/images/square.jpg",
      color: Color.fromRGBO(242, 127, 178, 1),
    )
    
  ];
   List<CardDetail> get card {
    return [..._cardliist];
  }
   void addcard() {
    notifyListeners();
  }
}
