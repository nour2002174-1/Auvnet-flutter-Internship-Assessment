import 'package:auvnet/features/login/repo/login_repo.dart';
import 'package:auvnet/features/login/view/widgets/login_viewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auvnet/features/login/bloc/login_bloc.dart';

class Login_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(authRepository: AuthRepository()),
      child: Scaffold(
        body: Builder(
          builder: (context) => LoginViewBody(), 
        ),
      ),
    );
  }
}
