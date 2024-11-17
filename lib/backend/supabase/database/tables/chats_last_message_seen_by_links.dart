import '../database.dart';

class ChatsLastMessageSeenByLinksTable
    extends SupabaseTable<ChatsLastMessageSeenByLinksRow> {
  @override
  String get tableName => 'chats_last_message_seen_by_links';

  @override
  ChatsLastMessageSeenByLinksRow createRow(Map<String, dynamic> data) =>
      ChatsLastMessageSeenByLinksRow(data);
}

class ChatsLastMessageSeenByLinksRow extends SupabaseDataRow {
  ChatsLastMessageSeenByLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsLastMessageSeenByLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  double? get userOrder => getField<double>('user_order');
  set userOrder(double? value) => setField<double>('user_order', value);
}
