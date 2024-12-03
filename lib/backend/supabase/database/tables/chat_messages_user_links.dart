import '../database.dart';

class ChatMessagesUserLinksTable
    extends SupabaseTable<ChatMessagesUserLinksRow> {
  @override
  String get tableName => 'chat_messages_user_links';

  @override
  ChatMessagesUserLinksRow createRow(Map<String, dynamic> data) =>
      ChatMessagesUserLinksRow(data);
}

class ChatMessagesUserLinksRow extends SupabaseDataRow {
  ChatMessagesUserLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatMessagesUserLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatMessageId => getField<int>('chat_message_id');
  set chatMessageId(int? value) => setField<int>('chat_message_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
