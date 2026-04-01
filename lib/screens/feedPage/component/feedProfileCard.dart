import 'package:devcommunity/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class FeedProfileCard extends StatelessWidget {
  const FeedProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      height: MediaQuery.of(context).size.height/2,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: DVColor.borderColorGrey, blurRadius: 24, offset: Offset(10, 10))],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset('assets/images/placeholder.jpg', fit: BoxFit.cover,),


    );
  }
}
