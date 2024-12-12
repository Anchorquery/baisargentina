// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sentry_flutter/sentry_flutter.dart';

Future addSentryIo() async {
  try {
    await SentryFlutter.init(
      (options) {
        options.dsn =
            FFAppConstants.sentryDsn; // Use the DSN constant we'll create
        options.tracesSampleRate = 1.0; // Adjust as needed
      },
    );
  } catch (error) {
    print('Error initializing Sentry.io: $error');
  }
}
