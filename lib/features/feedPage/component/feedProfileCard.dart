import 'package:devcommunity/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class FeedProfileCard extends StatelessWidget {
  const FeedProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = ["assets/images/placeholder.jpg", "assets/images/placeholder.jpg", "assets/images/placeholder.jpg", "assets/images/placeholder.jpg", "assets/images/placeholder.jpg",];
    return CardSwiper(
      cardBuilder: (BuildContext context, int index, int horizontalOffsetPercentage, int verticalOffsetPercentage) {
        return Container(
          clipBehavior: Clip.antiAlias,
          width: double.infinity,
          height: MediaQuery.of(context).size.height/2,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: DVColor.borderColorGrey, blurRadius: 24, offset: Offset(10, 10))],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(images[index], fit: BoxFit.cover,),
        );
      }, cardsCount: images.length,
    );
  }
}
