import 'package:audio_tales_app/Bloc/auth_bloc.dart';
import 'package:audio_tales_app/Bloc/auth_state.dart';
import 'package:audio_tales_app/pages/collections/active_user_collections/active_user_collections.dart';
import 'package:audio_tales_app/pages/collections/create_a_selection.dart';
import 'package:audio_tales_app/pages/collections/list_of_added_audio_files/list_of_added_audio_files.dart';
import 'package:audio_tales_app/pages/delete_audio/delete_audio.dart';
import 'package:audio_tales_app/pages/payment_via_apple_pay.dart';
import 'package:audio_tales_app/pages/profile/settings_profile.dart';
import 'package:audio_tales_app/pages/search_audio/search_audio.dart';
import 'package:audio_tales_app/pages/test.dart';
import 'package:audio_tales_app/pages/profile/profile.dart';
import 'package:audio_tales_app/pages/user_authorization/authorization/audio_selections.dart';
import 'package:audio_tales_app/pages/user_authorization/authorization/authorization.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/phone_auth.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/registration.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/sms_authorization.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/start_of_application.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/successful_registration.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/with_empty_selection.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demsddso',
        theme: ThemeData(

            // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 28, 131, 109)),
            // useMaterial3: true,

            ),
        home: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
        print(
          "============================${state.status}",
        );
        return  MyWidget();
      }),
    );
  }
}








  