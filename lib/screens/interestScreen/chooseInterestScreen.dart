import 'package:devcommunity/utils/colors.dart';
import 'package:devcommunity/utils/fieldOfInterestList.dart';
import 'package:flutter/cupertino.dart';

class ChooseInterestScreen extends StatelessWidget{
  const ChooseInterestScreen({super.key});


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: double.infinity,
      width: double.infinity,

      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index){
        return Container(
          width: 120,
          height: 45,
          color: DVColor.primaryColor,
        );
      },
      itemCount: FieldOfInterestList.fieldOfInterests.length,
      ),

    );
  }
}