import '../database.dart';

class ChatsLastMessageSentByLinksTable
    extends SupabaseTable<ChatsLastMessageSentByLinksRow> {
  @override
  String get tableName => 'chats_last_message_sent_by_links';

  @override
  ChatsLastMessageSentByLinksRow createRow(Map<String, dynamic> data) =>
      ChatsLastMessageSentByLinksRow(data);
}

class ChatsLastMessageSentByLinksRow extends SupabaseDataRow {
  ChatsLastMessageSentByLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsLastMessageSentByLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
