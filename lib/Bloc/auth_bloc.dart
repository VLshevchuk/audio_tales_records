import 'dart:async';
import 'dart:developer';

import 'package:audio_tales_app/Bloc/auth_event.dart';
import 'package:audio_tales_app/Bloc/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()
      : super(
          AuthState(
            status: AuthStateEnum.loadingPhoneNumber,
          ),
        ) {
    on<VerifySmsCodeEvent>(_onVerifySmsCode);
    on<CodeSendEvent>(_onCodeSendEvent);
  }



  Future<void> _onVerifySmsCode(
    VerifySmsCodeEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: state.verificationId!, smsCode: event.smsCode);
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(
        state.copyWith(
          status: AuthStateEnum.success,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthStateEnum.error,
        ),
      );
    }
  }

  Future<void> _onCodeSendEvent(
    CodeSendEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        status: AuthStateEnum.loadingSmsCode,
        verificationId: event.verificationId,
      ),
    );
  }
}
