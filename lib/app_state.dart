import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UserStruct _user = UserStruct.fromSerializableMap(jsonDecode('{}'));
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  bool _isSocketConnected = false;
  bool get isSocketConnected => _isSocketConnected;
  set isSocketConnected(bool value) {
    _isSocketConnected = value;
  }

  List<ChatMessageStruct> _listMessages = [];
  List<ChatMessageStruct> get listMessages => _listMessages;
  set listMessages(List<ChatMessageStruct> value) {
    _listMessages = value;
  }

  void addToListMessages(ChatMessageStruct value) {
    listMessages.add(value);
  }

  void removeFromListMessages(ChatMessageStruct value) {
    listMessages.remove(value);
  }

  void removeAtIndexFromListMessages(int index) {
    listMessages.removeAt(index);
  }

  void updateListMessagesAtIndex(
    int index,
    ChatMessageStruct Function(ChatMessageStruct) updateFn,
  ) {
    listMessages[index] = updateFn(_listMessages[index]);
  }

  void insertAtIndexInListMessages(int index, ChatMessageStruct value) {
    listMessages.insert(index, value);
  }

  List<ChatStruct> _listChats = [];
  List<ChatStruct> get listChats => _listChats;
  set listChats(List<ChatStruct> value) {
    _listChats = value;
  }

  void addToListChats(ChatStruct value) {
    listChats.add(value);
  }

  void removeFromListChats(ChatStruct value) {
    listChats.remove(value);
  }

  void removeAtIndexFromListChats(int index) {
    listChats.removeAt(index);
  }

  void updateListChatsAtIndex(
    int index,
    ChatStruct Function(ChatStruct) updateFn,
  ) {
    listChats[index] = updateFn(_listChats[index]);
  }

  void insertAtIndexInListChats(int index, ChatStruct value) {
    listChats.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
