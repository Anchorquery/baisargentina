import '../database.dart';

class ChatWithUsersTable extends SupabaseTable<ChatWithUsersRow> {
  @override
  String get tableName => 'chat_with_users';

  @override
  ChatWithUsersRow createRow(Map<String, dynamic> data) =>
      ChatWithUsersRow(data);
}

class ChatWithUsersRow extends SupabaseDataRow {
  ChatWithUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatWithUsersTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);

  DateTime? get lastMessageTime => getField<DateTime>('last_message_time');
  set lastMessageTime(DateTime? value) =>
      setField<DateTime>('last_message_time', value);

  int? get groupChatId => getField<int>('group_chat_id');
  set groupChatId(int? value) => setField<int>('group_chat_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get publishedAt => getField<DateTime>('published_at');
  set publishedAt(DateTime? value) => setField<DateTime>('published_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);

  int? get userAId => getField<int>('user_a_id');
  set userAId(int? value) => setField<int>('user_a_id', value);

  int? get userBId => getField<int>('user_b_id');
  set userBId(int? value) => setField<int>('user_b_id', value);
}
