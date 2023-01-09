part of 'movies_cubit.dart';

@immutable
 class MoviesState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;

   MoviesState ({required this.documents});
 }


