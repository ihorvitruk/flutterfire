import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;

import 'package:flutter/material.dart';

import 'package:firebase_ui/auth.dart';
import 'package:firebase_ui/i10n.dart';
import '../auth_controller.dart';

class SMSCodeInputScreen extends StatelessWidget {
  final AuthAction? action;
  final FirebaseAuth? auth;
  final Object flowKey;

  const SMSCodeInputScreen({
    Key? key,
    this.action,
    this.auth,
    required this.flowKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l = FirebaseUILocalizations.labelsOf(context);

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: SMSCodeInputView(
            auth: auth,
            action: action,
            flowKey: flowKey,
            onCodeVerified: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
