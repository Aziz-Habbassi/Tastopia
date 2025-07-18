part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchDone extends SearchState {
  final List<MealModel> searchResult;

  SearchDone({required this.searchResult});
}
