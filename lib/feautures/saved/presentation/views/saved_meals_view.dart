import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tastopia/feautures/saved/presentation/widgets/saved_meals_app_bar.dart';
import 'package:tastopia/feautures/saved/presentation/widgets/saved_meals_gird_list.dart';
import 'package:tastopia/feautures/search/data/manager/cubits/search_cubit/search_cubit.dart';
import 'package:tastopia/feautures/search/presentaion/widgets/search_text_field.dart';

class SavedMealsView extends StatelessWidget {
  const SavedMealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SavedMealsAppBar()),
            const SliverToBoxAdapter(child: SearchTextField()),
            const SliverToBoxAdapter(child: SizedBox(height: 25)),
            const SavedMealsGirdList(),
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
