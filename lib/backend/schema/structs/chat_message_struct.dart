// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageStruct extends BaseStruct {
  ChatMessageStruct({
    ChatStruct? chat,
    String? text,
    String? image,
    String? video,
    String? file,
    String? uuid,
    bool? isMe,
    UserChatStruct? user,
    int? userId,
    List<FileDStruct>? images,
    bool? loading,
    int? timestamp,
  })  : _chat = chat,
        _text = text,
        _image = image,
        _video = video,
        _file = file,
        _uuid = uuid,
        _isMe = isMe,
        _user = user,
        _userId = userId,
        _images = images,
        _loading = loading,
        _timestamp = timestamp;

  // "chat" field.
  ChatStruct? _chat;
  ChatStruct get chat => _chat ?? ChatStruct();
  set chat(ChatStruct? val) => _chat = val;

  void updateChat(Function(ChatStruct) updateFn) {
    updateFn(_chat ??= ChatStruct());
  }

  bool hasChat() => _chat != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;

  bool hasVideo() => _video != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  set file(String? val) => _file = val;

  bool hasFile() => _file != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "isMe" field.
  bool? _isMe;
  bool get isMe => _isMe ?? false;
  set isMe(bool? val) => _isMe = val;

  bool hasIsMe() => _isMe != null;

  // "user" field.
  UserChatStruct? _user;
  UserChatStruct get user => _user ?? UserChatStruct();
  set user(UserChatStruct? val) => _user = val;

  void updateUser(Function(UserChatStruct) updateFn) {
    updateFn(_user ??= UserChatStruct());
  }

  bool hasUser() => _user != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "images" field.
  List<FileDStruct>? _images;
  List<FileDStruct> get images => _images ?? const [];
  set images(List<FileDStruct>? val) => _images = val;

  void updateImages(Function(List<FileDStruct>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "loading" field.
  bool? _loading;
  bool get loading => _loading ?? false;
  set loading(bool? val) => _loading = val;

  bool hasLoading() => _loading != null;

  // "timestamp" field.
  int? _timestamp;
  int get timestamp => _timestamp ?? 0;
  set timestamp(int? val) => _timestamp = val;

  void incrementTimestamp(int amount) => timestamp = timestamp + amount;

  bool hasTimestamp() => _timestamp != null;

  static ChatMessageStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        chat: data['chat'] is ChatStruct
            ? data['chat']
            : ChatStruct.maybeFromMap(data['chat']),
        text: data['text'] as String?,
        image: data['image'] as String?,
        video: data['video'] as String?,
        file: data['file'] as String?,
        uuid: data['uuid'] as String?,
        isMe: data['isMe'] as bool?,
        user: data['user'] is UserChatStruct
            ? data['user']
            : UserChatStruct.maybeFromMap(data['user']),
        userId: castToType<int>(data['user_id']),
        images: getStructList(
          data['images'],
          FileDStruct.fromMap,
        ),
        loading: data['loading'] as bool?,
        timestamp: castToType<int>(data['timestamp']),
      );

  static ChatMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chat': _chat?.toMap(),
        'text': _text,
        'image': _image,
        'video': _video,
        'file': _file,
        'uuid': _uuid,
        'isMe': _isMe,
        'user': _user?.toMap(),
        'user_id': _userId,
        'images': _images?.map((e) => e.toMap()).toList(),
        'loading': _loading,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chat': serializeParam(
          _chat,
          ParamType.DataStruct,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'file': serializeParam(
          _file,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'isMe': serializeParam(
          _isMe,
          ParamType.bool,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'images': serializeParam(
          _images,
          ParamType.DataStruct,
          isList: true,
        ),
        'loading': serializeParam(
          _loading,
          ParamType.bool,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChatMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        chat: deserializeStructParam(
          data['chat'],
          ParamType.DataStruct,
          false,
          structBuilder: ChatStruct.fromSerializableMap,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        file: deserializeParam(
          data['file'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        isMe: deserializeParam(
          data['isMe'],
          ParamType.bool,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserChatStruct.fromSerializableMap,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        images: deserializeStructParam<FileDStruct>(
          data['images'],
          ParamType.DataStruct,
          true,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        loading: deserializeParam(
          data['loading'],
          ParamType.bool,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChatMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatMessageStruct &&
        chat == other.chat &&
        text == other.text &&
        image == other.image &&
        video == other.video &&
        file == other.file &&
        uuid == other.uuid &&
        isMe == other.isMe &&
        user == other.user &&
        userId == other.userId &&
        listEquality.equals(images, other.images) &&
        loading == other.loading &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode => const ListEquality().hash([
        chat,
        text,
        image,
        video,
        file,
        uuid,
        isMe,
        user,
        userId,
        images,
        loading,
        timestamp
      ]);
}

ChatMessageStruct createChatMessageStruct({
  ChatStruct? chat,
  String? text,
  String? image,
  String? video,
  String? file,
  String? uuid,
  bool? isMe,
  UserChatStruct? user,
  int? userId,
  bool? loading,
  int? timestamp,
}) =>
    ChatMessageStruct(
      chat: chat ?? ChatStruct(),
      text: text,
      image: image,
      video: video,
      file: file,
      uuid: uuid,
      isMe: isMe,
      user: user ?? UserChatStruct(),
      userId: userId,
      loading: loading,
      timestamp: timestamp,
    );
