import '../database.dart';

class ChatsUserALinksTable extends SupabaseTable<ChatsUserALinksRow> {
  @override
  String get tableName => 'chats_user_a_links';

  @override
  ChatsUserALinksRow createRow(Map<String, dynamic> data) =>
      ChatsUserALinksRow(data);
}

class ChatsUserALinksRow extends SupabaseDataRow {
  ChatsUserALinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsUserALinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
