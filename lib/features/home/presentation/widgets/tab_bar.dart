import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/features/home/presentation/widgets/product_main_class_widget.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController =  ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).dividerColor,
        elevation: 0,
        titleSpacing: 0,
        toolbarHeight: 180,
        // centerTitle: false,
        title: Transform(
          transform:  Matrix4.translationValues(0.0, -SizeConfig.defaultSize! * 3.5, 0.0),
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
                    padding: EdgeInsetsDirectional.only(start: 30, end: 30),
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
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 1.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
                        )),
                  ),
                ]),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // Creates border
              color: const Color(0xFFCC7D00)),
          tabs: const <Widget>[
            Tab(
              text: "Vegetables",
            ),
            Tab(
              text: "Fruits",
            ),
            Tab(
              text: "Dry Fruits",
            ),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children:  <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            ProductMainClassWidget("1"),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
    );
  }
}
