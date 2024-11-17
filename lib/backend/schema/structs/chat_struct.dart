// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatStruct extends BaseStruct {
  ChatStruct({
    String? lastMessage,
    UserStruct? lastMessageSentBy,
    List<UserStruct>? lastMessageSeenBy,
    String? uuid,
    String? state,
    String? lastMessageTime,
    String? name,
    UserChatStruct? user,
    String? id,
  })  : _lastMessage = lastMessage,
        _lastMessageSentBy = lastMessageSentBy,
        _lastMessageSeenBy = lastMessageSeenBy,
        _uuid = uuid,
        _state = state,
        _lastMessageTime = lastMessageTime,
        _name = name,
        _user = user,
        _id = id;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) => _lastMessage = val;

  bool hasLastMessage() => _lastMessage != null;

  // "last_message_sent_by" field.
  UserStruct? _lastMessageSentBy;
  UserStruct get lastMessageSentBy => _lastMessageSentBy ?? UserStruct();
  set lastMessageSentBy(UserStruct? val) => _lastMessageSentBy = val;

  void updateLastMessageSentBy(Function(UserStruct) updateFn) {
    updateFn(_lastMessageSentBy ??= UserStruct());
  }

  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  // "last_message_seen_by" field.
  List<UserStruct>? _lastMessageSeenBy;
  List<UserStruct> get lastMessageSeenBy => _lastMessageSeenBy ?? const [];
  set lastMessageSeenBy(List<UserStruct>? val) => _lastMessageSeenBy = val;

  void updateLastMessageSeenBy(Function(List<UserStruct>) updateFn) {
    updateFn(_lastMessageSeenBy ??= []);
  }

  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "last_message_time" field.
  String? _lastMessageTime;
  String get lastMessageTime => _lastMessageTime ?? '';
  set lastMessageTime(String? val) => _lastMessageTime = val;

  bool hasLastMessageTime() => _lastMessageTime != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "user" field.
  UserChatStruct? _user;
  UserChatStruct get user => _user ?? UserChatStruct();
  set user(UserChatStruct? val) => _user = val;

  void updateUser(Function(UserChatStruct) updateFn) {
    updateFn(_user ??= UserChatStruct());
  }

  bool hasUser() => _user != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static ChatStruct fromMap(Map<String, dynamic> data) => ChatStruct(
        lastMessage: data['last_message'] as String?,
        lastMessageSentBy:
            UserStruct.maybeFromMap(data['last_message_sent_by']),
        lastMessageSeenBy: getStructList(
          data['last_message_seen_by'],
          UserStruct.fromMap,
        ),
        uuid: data['uuid'] as String?,
        state: data['state'] as String?,
        lastMessageTime: data['last_message_time'] as String?,
        name: data['name'] as String?,
        user: UserChatStruct.maybeFromMap(data['user']),
        id: data['id'] as String?,
      );

  static ChatStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'last_message': _lastMessage,
        'last_message_sent_by': _lastMessageSentBy?.toMap(),
        'last_message_seen_by':
            _lastMessageSeenBy?.map((e) => e.toMap()).toList(),
        'uuid': _uuid,
        'state': _state,
        'last_message_time': _lastMessageTime,
        'name': _name,
        'user': _user?.toMap(),
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'last_message': serializeParam(
          _lastMessage,
          ParamType.String,
        ),
        'last_message_sent_by': serializeParam(
          _lastMessageSentBy,
          ParamType.DataStruct,
        ),
        'last_message_seen_by': serializeParam(
          _lastMessageSeenBy,
          ParamType.DataStruct,
          isList: true,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'last_message_time': serializeParam(
          _lastMessageTime,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatStruct(
        lastMessage: deserializeParam(
          data['last_message'],
          ParamType.String,
          false,
        ),
        lastMessageSentBy: deserializeStructParam(
          data['last_message_sent_by'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        lastMessageSeenBy: deserializeStructParam<UserStruct>(
          data['last_message_seen_by'],
          ParamType.DataStruct,
          true,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        lastMessageTime: deserializeParam(
          data['last_message_time'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserChatStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatStruct &&
        lastMessage == other.lastMessage &&
        lastMessageSentBy == other.lastMessageSentBy &&
        listEquality.equals(lastMessageSeenBy, other.lastMessageSeenBy) &&
        uuid == other.uuid &&
        state == other.state &&
        lastMessageTime == other.lastMessageTime &&
        name == other.name &&
        user == other.user &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        lastMessage,
        lastMessageSentBy,
        lastMessageSeenBy,
        uuid,
        state,
        lastMessageTime,
        name,
        user,
        id
      ]);
}

ChatStruct createChatStruct({
  String? lastMessage,
  UserStruct? lastMessageSentBy,
  String? uuid,
  String? state,
  String? lastMessageTime,
  String? name,
  UserChatStruct? user,
  String? id,
}) =>
    ChatStruct(
      lastMessage: lastMessage,
      lastMessageSentBy: lastMessageSentBy ?? UserStruct(),
      uuid: uuid,
      state: state,
      lastMessageTime: lastMessageTime,
      name: name,
      user: user ?? UserChatStruct(),
      id: id,
    );
