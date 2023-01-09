import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : 
  super
  ( const MoviesState (
  documents:  [],
  errorMessage: '',
  isLoading: false),);
}
