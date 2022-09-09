import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomImage(
              image: AssetImage("assets/images/broccoli.jpg"),
              width: SizeConfig.defaultSize! * 12,
              height: SizeConfig.defaultSize! * 12,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: text, fontWeight: FontWeight.bold, fontSize: 18),
                    const Spacer(),
                    const CustomText(
                        text: "160 Per/kg",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ],
                ),
                const CustomText(
                  text: "Pick up from organic farms",
                  color: Color(0xffb2b2b2),
                  fontSize: 14,
                ),
                CustomRatingBar(
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FloatingActionButton(
                        onPressed: () {},
                        heroTag: 'weight-',
                        mini: true,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CustomText(
                        text: "1",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: () {},
                        heroTag: 'weight+',
                        mini: true,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color(0xffCC7D00),
                      child: const CustomText(
                        color: Colors.white,
                        text: "Add",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     ElevatedButton(onPressed: () {},
                //         child: Icon(Icons.remove,color: Colors.black,),
                //         style: ButtonStyle(
                //           backgroundColor: MaterialStateProperty.all(Colors.white),
                //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //                 RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(10),
                //                   side:BorderSide(color: Colors.black)
                //                 ),
                //             )
                //         )),
                //     const Text("1"),
                //     ElevatedButton(onPressed: () {},
                //         child: Icon(Icons.add_rounded,color: Colors.black),
                //         style: ButtonStyle(
                //             backgroundColor: MaterialStateProperty.all(Colors.white),
                //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //               RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                   side:BorderSide(color: Colors.black)
                //               ),
                //             )
                //         )),
                //     const Spacer(),
                //     MaterialButton(
                //       onPressed: () {},
                //       child: const Text("Add"),
                //       color: const Color(0xffCC7D00),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
