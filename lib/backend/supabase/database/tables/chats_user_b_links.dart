import '../database.dart';

class ChatsUserBLinksTable extends SupabaseTable<ChatsUserBLinksRow> {
  @override
  String get tableName => 'chats_user_b_links';

  @override
  ChatsUserBLinksRow createRow(Map<String, dynamic> data) =>
      ChatsUserBLinksRow(data);
}

class ChatsUserBLinksRow extends SupabaseDataRow {
  ChatsUserBLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsUserBLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
