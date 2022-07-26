import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/features/home/presentation/widgets/product_main_class_widget.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()
        ..add(
          const HomeEvent.watchProductMainClasses(),
        ),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
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
                return Scaffold(
                  appBar: AppBar(
                    systemOverlayStyle:  SystemUiOverlayStyle(
                      // Status bar color
                      statusBarColor: Theme.of(context).primaryColor,

                      // Status bar brightness (optional)
                      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
                      statusBarBrightness: Brightness.light, // For iOS (dark icons)
                    ),
                    automaticallyImplyLeading: false,
                    backgroundColor: Theme.of(context).dividerColor,
                    elevation: 0,
                    titleSpacing: 0,
                    toolbarHeight: 150,
                    // centerTitle: false,
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
                                padding: EdgeInsetsDirectional.only(
                                    start: 30, end: 30),
                                child: Row(
                                  children: [
                                    Text(
                                      marketName,
                                      style: TextStyle(
                                          color: Theme.of(context).dividerColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.notifications,
                                      color: Theme.of(context).dividerColor,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: -SizeConfig.defaultSize! * 2.6,
                                left: SizeConfig.defaultSize! * 3,
                                right: SizeConfig.defaultSize! * 3,
                                child: Container(
                                    height: SizeConfig.defaultSize! * 5.6,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.text,
                                      onChanged: (x) {},
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black, width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black54,
                                              width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                        ),
                                        hintText: 'Search',
                                        prefixIcon: Icon(Icons.search),
                                      ),
                                    )),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  body: DefaultTabController(
                    // animationDuration: Duration(milliseconds: 100),
                    length: BlocProvider.of<HomeBloc>(context)
                        .listProductMainClasses
                        .length,
                    child: Column(
                      children: <Widget>[
                        TabBar(
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
                                  text: BlocProvider.of<HomeBloc>(context)
                                      .listProductMainClasses[index]
                                      .name.getOrCrash(),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: TabBarView(
                            children: List.generate(
                                BlocProvider.of<HomeBloc>(context)
                                    .listProductMainClasses
                                    .length,
                                    (index) => ProductMainClassWidget(
                                    BlocProvider.of<HomeBloc>(context)
                                        .listProductMainClasses[index]
                                        .id.getOrCrash())),
                          ),
                        ),
                      ],
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
