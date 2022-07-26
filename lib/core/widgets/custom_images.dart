import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({Key? key, required this.image, this.circularRadius = 10.0,  this.width=95.00, this.height=95.00, this.rightMargin=20, this.leftMargin=20})
      : super(key: key);

  final ImageProvider<Object> image;
  final double? circularRadius;
  final double width;
  final double height;
  final double rightMargin;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(
      //   left: leftMargin,
      //   // right: rightMargin
      // ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(circularRadius!),
      ),
    );
    ;
  }
}


//     child: Image(
//     image: AssetImage("assets/images/broccoli.jpg"),
//     fit: BoxFit.cover,
//     width: 100,
// ),