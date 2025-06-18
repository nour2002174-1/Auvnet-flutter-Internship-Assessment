abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent {
  final String email;
  final String password;

  SignUpSubmitted({required this.email, required this.password});
}
