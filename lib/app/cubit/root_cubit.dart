// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState(user: null));
}
