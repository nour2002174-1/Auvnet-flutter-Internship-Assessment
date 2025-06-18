import 'package:auvnet/features/sign_up/repo/sihn_up_repo.dart';
import 'package:bloc/bloc.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepository repository;

  SignUpBloc(this.repository) : super(SignUpInitial()) {
    on<SignUpSubmitted>((event, emit) async {
      emit(SignUpLoading());
      try {
        await repository.register(event.email, event.password);
        emit(SignUpSuccess());
      } catch (e) {
        emit(SignUpFailure(error: e.toString()));
      }
    });
  }
}
