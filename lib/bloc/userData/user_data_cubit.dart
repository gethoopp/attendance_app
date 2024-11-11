import 'package:attendance_app/controller/repository/users/users.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'user_data_state.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(UserDataInitial());

  //cubit untuk memanggil data user berdasarkan id
  void userGetData(int id) {
    final BaseUserRepository userRepository;

    try {} catch (e) {}
  }
}
