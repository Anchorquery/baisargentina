import '../database.dart';

class ChatMessagesTable extends SupabaseTable<ChatMessagesRow> {
  @override
  String get tableName => 'chat_messages';

  @override
  ChatMessagesRow createRow(Map<String, dynamic> data) => ChatMessagesRow(data);
}

class ChatMessagesRow extends SupabaseDataRow {
  ChatMessagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatMessagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get text => getField<String>('text');
  set text(String? value) => setField<String>('text', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get video => getField<String>('video');
  set video(String? value) => setField<String>('video', value);

  String? get file => getField<String>('file');
  set file(String? value) => setField<String>('file', value);

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

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  int? get chat => getField<int>('chat');
  set chat(int? value) => setField<int>('chat', value);
}
