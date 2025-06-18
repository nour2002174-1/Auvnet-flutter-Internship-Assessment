import 'package:auvnet/features/sign_up/repo/sihn_up_repo.dart';
import 'package:auvnet/features/sign_up/view/widgets/sign_upviewbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auvnet/features/sign_up/bloc/sign_up_bloc.dart';


class Sign_upview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpBloc(SignUpRepository()), 
      child: Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
