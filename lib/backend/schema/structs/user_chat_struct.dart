// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserChatStruct extends BaseStruct {
  UserChatStruct({
    int? id,
    String? avatar,
    String? name,
    bool? isMe,
    bool? isOnline,
  })  : _id = id,
        _avatar = avatar,
        _name = name,
        _isMe = isMe,
        _isOnline = isOnline;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "isMe" field.
  bool? _isMe;
  bool get isMe => _isMe ?? false;
  set isMe(bool? val) => _isMe = val;

  bool hasIsMe() => _isMe != null;

  // "isOnline" field.
  bool? _isOnline;
  bool get isOnline => _isOnline ?? false;
  set isOnline(bool? val) => _isOnline = val;

  bool hasIsOnline() => _isOnline != null;

  static UserChatStruct fromMap(Map<String, dynamic> data) => UserChatStruct(
        id: castToType<int>(data['id']),
        avatar: data['avatar'] as String?,
        name: data['name'] as String?,
        isMe: data['isMe'] as bool?,
        isOnline: data['isOnline'] as bool?,
      );

  static UserChatStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserChatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'avatar': _avatar,
        'name': _name,
        'isMe': _isMe,
        'isOnline': _isOnline,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'isMe': serializeParam(
          _isMe,
          ParamType.bool,
        ),
        'isOnline': serializeParam(
          _isOnline,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserChatStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserChatStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        isMe: deserializeParam(
          data['isMe'],
          ParamType.bool,
          false,
        ),
        isOnline: deserializeParam(
          data['isOnline'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserChatStruct &&
        id == other.id &&
        avatar == other.avatar &&
        name == other.name &&
        isMe == other.isMe &&
        isOnline == other.isOnline;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, avatar, name, isMe, isOnline]);
}

UserChatStruct createUserChatStruct({
  int? id,
  String? avatar,
  String? name,
  bool? isMe,
  bool? isOnline,
}) =>
    UserChatStruct(
      id: id,
      avatar: avatar,
      name: name,
      isMe: isMe,
      isOnline: isOnline,
    );
