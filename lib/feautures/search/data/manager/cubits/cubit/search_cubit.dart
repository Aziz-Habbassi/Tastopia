import 'package:bloc/bloc.dart';
import 'package:tastopia/core/models/meal_model/meal_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  void search(List<MealModel> list) {
    emit(SearchDone(searchResult: list));
  }
}
