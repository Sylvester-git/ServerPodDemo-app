import 'package:demo_pod_app_flutter/packeg_barrel.dart';
import 'package:demo_pod_app_flutter/src/features/data/api_client.dart';
import 'package:flutter/material.dart';

import '../../../utils/dependcy_inj.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SignInWithEmailButton(
          caller: singleton<ApiClient>().client.modules.auth,
          onSignedIn: () {
            print('Welcome');
          },
        ),
      ),
    );
  }
}
