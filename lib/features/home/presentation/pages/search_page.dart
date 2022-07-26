import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


// Positioned(
// bottom: -SizeConfig.defaultSize! * 2.6,
// left: SizeConfig.defaultSize! * 3,
// right: SizeConfig.defaultSize! * 3,
// child: GestureDetector(
// onTap: () {
// Get.toNamed(MobileRoutes.Search);
// },
// child: Container(
// height:
// SizeConfig.defaultSize! * 5.6,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius:
// BorderRadius.circular(15.0),
// ),
// child: TextField(
// // keyboardType: TextInputType.text,
// enabled: false,
// // onChanged: (x) {},
// // maxLines: 1,
// decoration: InputDecoration(
// // focusedBorder:
// //     OutlineInputBorder(
// //   borderSide: const BorderSide(
// //       color: Colors.black,
// //       width: 1.0),
// //   borderRadius:
// //       BorderRadius.circular(
// //           15.0),
// // ),
// // enabledBorder:
// //     OutlineInputBorder(
// //   borderSide: const BorderSide(
// //       color: Colors.black54,
// //       width: 1.0),
// //   borderRadius:
// //       BorderRadius.circular(
// //           15.0),
// // ),
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// color: Colors.black,
// width: 1.0),
// borderRadius:
// BorderRadius.circular(
// 15.0),
// ),
// hintText: 'Search',
// prefixIcon: Icon(Icons.search),
// ),
// )),
// ),
// ),







// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
//
// class _SearchScreenState extends State<SearchScreen> {
//   final TextEditingController searchController = TextEditingController();
//   bool isShowUsers = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         title: Form(
//           child: TextFormField(
//             controller: searchController,
//             decoration:
//             const InputDecoration(labelText: 'Search for a user...'),
//             onFieldSubmitted: (String _) {
//               setState(() {
//                 isShowUsers = true;
//               });
//               print(_);
//             },
//           ),
//         ),
//       ),
//       body: isShowUsers
//           ? FutureBuilder(
//         future: FirebaseFirestore.instance
//             .collection('users')
//             .where(
//           'username',
//           isGreaterThanOrEqualTo: searchController.text,
//         )
//             .get(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           return ListView.builder(
//             itemCount: (snapshot.data! as dynamic).docs.length,
//             itemBuilder: (context, index) {
//               return InkWell(
//                 onTap: () => Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => ProfileScreen(
//                       uid: (snapshot.data! as dynamic).docs[index]['uid'],
//                     ),
//                   ),
//                 ),
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: NetworkImage(
//                       (snapshot.data! as dynamic).docs[index]['photoUrl'],
//                     ),
//                     radius: 16,
//                   ),
//                   title: Text(
//                     (snapshot.data! as dynamic).docs[index]['username'],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       )
//           : FutureBuilder(
//         future: FirebaseFirestore.instance
//             .collection('posts')
//             .orderBy('datePublished')
//             .get(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//
//           return StaggeredGridView.countBuilder(
//             crossAxisCount: 3,
//             itemCount: (snapshot.data! as dynamic).docs.length,
//             itemBuilder: (context, index) => Image.network(
//               (snapshot.data! as dynamic).docs[index]['postUrl'],
//               fit: BoxFit.cover,
//             ),
//             staggeredTileBuilder: (index) => MediaQuery.of(context)
//                 .size
//                 .width >
//                 webScreenSize
//                 ? StaggeredTile.count(
//                 (index % 7 == 0) ? 1 : 1, (index % 7 == 0) ? 1 : 1)
//                 : StaggeredTile.count(
//                 (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//           );
//         },
//       ),
//     );
//   }
// }
