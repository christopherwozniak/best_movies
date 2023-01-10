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

  

  Future<void> start () async {
    emit(const MoviesState (
  documents:  [],
  errorMessage: '',
  isLoading: false),);

  FirebaseFirestore.instance
                  .collection('movies')
                  .orderBy(
                    'rating',
                    descending: true,
                  )
                  .snapshots().listen((data) {
                    emit(MoviesState(documents: data.docs, isLoading: false, errorMessage: '',),);
                   }).onError((error){


                    emit(MoviesState(documents:  const [], isLoading: false, errorMessage: error.toString(),),);

                   });


  }
}
