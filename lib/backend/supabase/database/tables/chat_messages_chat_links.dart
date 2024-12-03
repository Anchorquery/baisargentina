import '../database.dart';

class ChatMessagesChatLinksTable
    extends SupabaseTable<ChatMessagesChatLinksRow> {
  @override
  String get tableName => 'chat_messages_chat_links';

  @override
  ChatMessagesChatLinksRow createRow(Map<String, dynamic> data) =>
      ChatMessagesChatLinksRow(data);
}

class ChatMessagesChatLinksRow extends SupabaseDataRow {
  ChatMessagesChatLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatMessagesChatLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatMessageId => getField<int>('chat_message_id');
  set chatMessageId(int? value) => setField<int>('chat_message_id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);
}
