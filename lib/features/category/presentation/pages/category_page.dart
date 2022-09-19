import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/constant/constants.dart';
import 'package:get/get.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../../subcategory/presentation/widgets/subcategories_widget.dart';
import '../cubit/category_cubit.dart';
import '../widgets/app_bar_stack_widget.dart';

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
                  child: NestedScrollView(
                    floatHeaderSlivers: true,
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverAppBar(
                          expandedHeight: SizeConfig.defaultSize! * 21,
                          flexibleSpace: const FlexibleSpaceBar(
                            background: AppBarStackWidget(),
                          ),
                          forceElevated: innerBoxIsScrolled,
                          floating: true,
                          pinned: true,
                          snap: true,
                          bottom: TabBar(
                            isScrollable: true,
                            tabs: <Widget>[
                              ...List.generate(
                                  state.categories.length,
                                  (index) => Tab(
                                        text: state.categories[index].name
                                                .isValid()
                                            ? state.categories[index].name
                                                .getOrCrash()
                                            : "",
                                      )),
                            ],
                          ),
                          // automaticallyImplyLeading: false,
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
                        (index) => SubcategoriesWidget(
                          state.categories[index].id.getOrCrash(),
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
