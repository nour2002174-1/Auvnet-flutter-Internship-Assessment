import 'package:auvnet/features/login/repo/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());
      try {
        await authRepository.login(event.email, event.password);
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(e.toString()));
      }
    });
  }
}
