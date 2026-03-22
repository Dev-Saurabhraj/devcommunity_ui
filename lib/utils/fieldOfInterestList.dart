import 'package:devcommunity/utils/icons.dart';

class FieldOfInterestList {
  static List<InterestModel> fieldOfInterests = [
    InterestModel(icon: IconsLibrary.camera, title: "Photography"),
    InterestModel(icon: IconsLibrary.weixinMarket, title: "Shopping"),
    InterestModel(icon: IconsLibrary.voice, title: "Karaoke"),
    InterestModel(icon: IconsLibrary.vienCharts, title: "Yoga"),
    InterestModel(icon: IconsLibrary.noodles, title: "Cooking"),
    InterestModel(icon: IconsLibrary.tennis, title: "Tennis"),
    InterestModel(icon: IconsLibrary.sport, title: "Run"),
    InterestModel(icon: IconsLibrary.ripple, title: "Swimming"),
    InterestModel(icon: IconsLibrary.camera, title: "Art"),
    InterestModel(icon: IconsLibrary.camera, title: "Extreme"),
    InterestModel(icon: IconsLibrary.camera, title: "Music"),
    InterestModel(icon: IconsLibrary.camera, title: "Drink"),
    InterestModel(icon: IconsLibrary.camera, title: "Video games"),
  ];
}

class InterestModel{
  final String icon;
  final String title;
  InterestModel({required this.icon, required this.title});
}