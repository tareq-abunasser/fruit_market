import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/features/home/presentation/widgets/product_main_class_widget.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../../cart/presentation/cubit/cart_watcher/cart_watcher_cubit.dart';
import '../bloc/home_bloc.dart';
import '../cubit/product/product_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>()
            ..add(
              const HomeEvent.watchProductMainClasses(),
            ),
        ),
        BlocProvider(create: (context) => getIt<ProductCubit>()),

      ],
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.maybeWhen(
              productMainClassesLoadFailure: (f) {
                f.mapOrNull(internet: (_) {});
              },
              productSubclassesLoadFailure: (f) {
                f.mapOrNull(internet: (_) {});
              },
              productsLoadFailure: (f) {
                f.mapOrNull(internet: (_) {});
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(
            initial: (_) => Container(),
            productMainClassesLoadInProgress: (_) => Container(
              child: const Center(child: CircularProgressIndicator()),
              color: Colors.white,
            ),
            productMainClassesLoadFailure: (failure) =>
                Center(child: Text(failure.homeFailure.toString())),
            orElse: () {
              if (BlocProvider.of<HomeBloc>(context)
                  .listProductMainClasses
                  .isNotEmpty) {
                return DefaultTabController(
                  length: BlocProvider.of<HomeBloc>(context)
                      .listProductMainClasses
                      .length,
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
                                        padding: const EdgeInsetsDirectional.only(
                                            start: 30, end: 30),
                                        child: Row(
                                          children: [
                                            Text(
                                              marketName,
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
                                                  hintText: 'Search',
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
                                    BlocProvider.of<HomeBloc>(context)
                                        .listProductMainClasses
                                        .length,
                                    (index) => Tab(
                                          text:
                                              BlocProvider.of<HomeBloc>(context)
                                                  .listProductMainClasses[index]
                                                  .name
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
                            BlocProvider.of<HomeBloc>(context)
                                .listProductMainClasses
                                .length,
                            (index) => ProductMainClassWidget(
                                BlocProvider.of<HomeBloc>(context)
                                    .listProductMainClasses[index]
                                    .id
                                    .getOrCrash())),
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
