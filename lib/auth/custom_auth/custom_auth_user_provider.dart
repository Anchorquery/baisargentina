import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BAISArgentinaAuthUser {
  BAISArgentinaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BAISArgentinaAuthUser> bAISArgentinaAuthUserSubject =
    BehaviorSubject.seeded(BAISArgentinaAuthUser(loggedIn: false));
Stream<BAISArgentinaAuthUser> bAISArgentinaAuthUserStream() =>
    bAISArgentinaAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
