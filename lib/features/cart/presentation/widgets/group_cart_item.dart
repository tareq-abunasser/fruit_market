// import 'package:flutter/material.dart';
//
// import '../../../../core/utils/size_config.dart';
// import '../../../../core/widgets/custom_text_field.dart';
// import 'cart_item.dart';
//
// class GroupCartItem extends StatelessWidget {
//   const GroupCartItem({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: double.infinity,
//           height: SizeConfig.defaultSize! * 4,
//           color: const Color(0xffE6E6E6),
//           child: Padding(
//             padding: EdgeInsets.only(
//                 top: SizeConfig.defaultSize! * 1,
//                 left: SizeConfig.defaultSize! * 1),
//             child: CustomText(
//               text: "Cart Items",
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         ListView.separated(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               return CartItem(text: "Grapes");
//             },
//             separatorBuilder: (context, index) {
//               return const Divider(
//                 height: 3,
//                 thickness: 1,
//                 color: Color(0xFFD1D1D1),
//               );
//             },
//             itemCount: 3),
//       ],
//     );
//   }
// }
