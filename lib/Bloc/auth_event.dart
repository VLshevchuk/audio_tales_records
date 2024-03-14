abstract class AuthEvent {}

class VerifyPhoneNumberEvent extends AuthEvent {
  final String phoneNumber;

  VerifyPhoneNumberEvent({
    required this.phoneNumber,
  });
}

class VerifySmsCodeEvent extends AuthEvent {
  final String smsCode;
  VerifySmsCodeEvent({
    required this.smsCode,
  });
}

class CodeSendEvent extends AuthEvent {
  final String verificationId;
  final int? resendToken;
  CodeSendEvent({
    required this.verificationId,
    this.resendToken,      
  });
}
