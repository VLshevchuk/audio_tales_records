

enum AuthStateEnum {
  loadingPhoneNumber,
  loadingSmsCode,
  success,
  error,
}

class  AuthState {
  final String? phoneNumber;
  final String? smsCode;
  final String? verificationId;

  final AuthStateEnum status;

  AuthState({
    required this.status,
    this.phoneNumber,
    this.smsCode,
    this.verificationId
  });
  AuthState copyWith({String? phoneNumber, String? smsCode, AuthStateEnum? status,String? verificationId,}) =>
      AuthState(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        smsCode: smsCode ?? this.smsCode,
        status: status ?? this.status,
        verificationId: verificationId??this.verificationId,
      );
}
