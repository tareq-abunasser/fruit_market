import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection.dart';
import '../../domain/entities/product_subclass.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../bloc/home_bloc.dart';
import 'product_subclass_widget.dart';

class ProductMainClassWidget extends StatefulWidget {
  ProductMainClassWidget(this.parentId, {Key? key}) : super(key: key);
  final String parentId;

  @override
  State<ProductMainClassWidget> createState() => _ProductMainClassWidgetState();
}

class _ProductMainClassWidgetState extends State<ProductMainClassWidget> {
  late ScrollController _scrollController;
  List<ProductSubclass> productSubclasses = [];
  bool hasMoreData = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
      state.mapOrNull(
          productSubclassesLoadSuccess: (success) =>
              hasMoreData = success.productSubclasses.isNotEmpty);
    }, builder: (context, state) {
      productSubclasses = BlocProvider.of<HomeBloc>(context)
          .listProductSubclasses
          .where((p) => p.parentId.getOrCrash() == widget.parentId)
          .toList();
      addListenerToScroll(context, state);
      if (productSubclasses.isEmpty) {
        return state.maybeMap(
          productSubclassesLoadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          productSubclassesLoadFailure: (failure) =>
              Center(child: Text(failure.homeFailure.toString())),
          orElse: () => Container(),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              controller: _scrollController,
              itemCount: productSubclasses.length + 1,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 25,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                if (index < productSubclasses.length) {
                  return ProductSubclassWidget(productSubclasses[index]);
                } else {
                  return Container();
                }
              }),
        );
      }
    });
  }

  void addListenerToScroll(context, HomeState state) {
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      if (currentScroll >= maxScroll &&
          hasMoreData &&
          state.maybeMap(
              productSubclassesLoadInProgress: (_) => false,
              orElse: () => true)) {
        if (productSubclasses.isNotEmpty) {
          BlocProvider.of<HomeBloc>(context).add(
              HomeEvent.watchProductSubclasses(
                  parentId: widget.parentId,
                  lastProductSubClassId:
                      productSubclasses.last.id.getOrCrash()));
        }
      }
    });
  }
}

//
// class ProductMainClassWidget extends StatelessWidget {
//   ProductMainClassWidget(this.parentId, {Key? key}) : super(key: key);
//   final String parentId;
//   ScrollController _scrollController = ScrollController();
//   List<ProductSubclass> productSubclasses = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
//       productSubclasses = BlocProvider.of<HomeBloc>(context)
//           .listProductSubclasses
//           .where((p) => p.parentId.getOrCrash() == parentId)
//           .toList();
//       addListenerToScroll(context);
//       if (productSubclasses.isEmpty) {
//         return state.maybeMap(
//           productSubclassesLoadInProgress: (_) =>
//               const Center(child: CircularProgressIndicator()),
//           productSubclassesLoadFailure: (failure) =>
//               Center(child: Text(failure.homeFailure.toString())),
//           orElse: () => Container(),
//         );
//       } else {
//         return Padding(
//           padding: const EdgeInsets.only(left: 15),
//           child: ListView.separated(
//               scrollDirection: Axis.vertical,
//               controller: _scrollController,
//               itemCount: productSubclasses.length + 1,
//               separatorBuilder: (context, index) {
//                 return const SizedBox(
//                   height: 25,
//                 );
//               },
//               itemBuilder: (BuildContext context, int index) {
//                 if (index < productSubclasses.length) {
//                   return ProductSubclassWidget(productSubclasses[index]);
//                 } else {
//                   return Container();
//                 }
//               }),
//         );
//       }
//     });
//   }
//
//   void addListenerToScroll(context) {
//     _scrollController.addListener(() {
//       double maxScroll = _scrollController.position.maxScrollExtent;
//       double currentScroll = _scrollController.position.pixels;
//       if (currentScroll >= maxScroll) {
//         if (productSubclasses.isNotEmpty) {
//           BlocProvider.of<HomeBloc>(context).add(
//               HomeEvent.watchProductSubclasses(
//                   parentId: parentId,
//                   lastProductSubClassId:
//                       productSubclasses.last.id.getOrCrash()));
//         }
//       }
//     });
//   }
// }
