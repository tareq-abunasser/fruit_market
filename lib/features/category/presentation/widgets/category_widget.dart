import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../core/services/size_config.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../cubit/category_cubit.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CategoryCubit>()..watchCategories(),
        ),
      ],
      child: BlocConsumer<CategoryCubit, CategoryState>(
        listener: (context, state) {
          state.mapOrNull(
            loadFailure: (f) {
              Get.snackbar(
                'Error',
                f.failure.map(
                  internet: (_) => 'Internet connection problem',
                  serverError: (_) => 'Server error',
                  cacheError: (_) => 'Cache error',
                ),
                backgroundColor: Colors.red,
              );
            },
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Container(
              child: const Center(child: CircularProgressIndicator()),
              color: Colors.white,
            ),
            loadFailure: (state) =>
                Center(child: Text(state.failure.toString())),
            loadSuccess: (state) {
              if (state.categories.isNotEmpty) {
                return DefaultTabController(
                  length: state.categories.length,
                  child: Scaffold(
                    body: NestedScrollView(
                      floatHeaderSlivers: true,
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return <Widget>[
                          SliverAppBar(
                            expandedHeight: SizeConfig.defaultSize! * 21,
                            snap: false,
                            title: Transform(
                              transform: Matrix4.translationValues(
                                  0.0, -SizeConfig.defaultSize! * 3.5, 0.0),
                              child: Container(
                                width: double.infinity,
                                color: Theme.of(context).primaryColor,
                                // height: 150,
                                child: Stack(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        height: SizeConfig.defaultSize! * 12,
                                        color: Theme.of(context).primaryColor,
                                        padding:
                                            const EdgeInsetsDirectional.only(
                                                start: 30, end: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              "marketName".tr,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .dividerColor,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.notifications,
                                              color: Theme.of(context)
                                                  .dividerColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: -SizeConfig.defaultSize! * 2.6,
                                        left: SizeConfig.defaultSize! * 3,
                                        right: SizeConfig.defaultSize! * 3,
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.toNamed(MobileRoutes.Search);
                                          },
                                          child: Container(
                                              height:
                                                  SizeConfig.defaultSize! * 5.6,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              child: TextField(
                                                enabled: false,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                            color: Colors.black,
                                                            width: 1.0),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.0),
                                                  ),
                                                  hintText: 'search'.tr,
                                                  prefixIcon:
                                                      Icon(Icons.search),
                                                ),
                                              )),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                            forceElevated: innerBoxIsScrolled,
                            floating: true,
                            pinned: true,
                            // snap: true,
                            bottom: TabBar(
                              isScrollable: true,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  // Creates border
                                  color: const Color(0xFFCC7D00)),
                              tabs: <Widget>[
                                ...List.generate(
                                    state.categories.length,
                                    (index) => Tab(
                                          text: state.categories[index].name
                                              .getOrCrash(),
                                        )),
                              ],
                            ),
                            systemOverlayStyle: SystemUiOverlayStyle(
                              // Status bar color
                              statusBarColor: Theme.of(context).primaryColor,

                              // Status bar brightness (optional)
                              statusBarIconBrightness: Brightness.dark,
                              // For Android (dark icons)
                              statusBarBrightness:
                                  Brightness.light, // For iOS (dark icons)
                            ),
                            automaticallyImplyLeading: false,
                            backgroundColor: Theme.of(context).dividerColor,
                            elevation: 0,
                            titleSpacing: 0,
                            toolbarHeight: 150,
                          ),
                        ];
                      },
                      body: TabBarView(
                        children: List.generate(
                          state.categories.length,
                          (index) => ListView.builder(
                              shrinkWrap: true,
                              itemCount: 20,
                              itemBuilder: (context, i) {
                                return Container(
                                  color: Colors.deepOrange,
                                  height: 100,
                                  child: Text(state.categories[index].name
                                      .getOrCrash()),
                                );
                              }),
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Container(
                  color: Colors.white,
                );
              }
            },
          );
        },
      ),
    );
  }
}





// FlexibleSpaceBar(
// background: Stack(
// clipBehavior: Clip.none,
// children: [
// Container(
// height: SizeConfig.defaultSize! * 14,
// color: Theme.of(context).primaryColor,
// padding:
// const EdgeInsetsDirectional.only(
// start: 30, end: 30),
// child: Row(
// children: [
// Text(
// "marketName".tr,
// style: TextStyle(
// color: Theme.of(context)
// .dividerColor,
// fontSize: 25,
// fontWeight: FontWeight.bold),
// ),
// const Spacer(),
// Icon(
// Icons.notifications,
// color: Theme.of(context)
// .dividerColor,
// ),
// ],
// ),
// ),
// Positioned(
// bottom: SizeConfig.defaultSize! * 8,
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
// enabled: false,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderSide:
// const BorderSide(
// color: Colors.black,
// width: 1.0),
// borderRadius:
// BorderRadius.circular(
// 15.0),
// ),
// hintText: 'search'.tr,
// prefixIcon:
// Icon(Icons.search),
// ),
// )),
// ),
// ),
// ]),
// )