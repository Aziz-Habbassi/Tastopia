import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/cubit/search_cubit.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/meals_gird_list.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/search_text_field.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/search_view_app_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SearchViewAppBar()),
            const SliverToBoxAdapter(child: SearchTextField()),
            const SliverToBoxAdapter(child: SizedBox(height: 25)),
            const MealsGirdList(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
