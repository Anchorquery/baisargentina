import '../database.dart';

class ChatsUsersLinksTable extends SupabaseTable<ChatsUsersLinksRow> {
  @override
  String get tableName => 'chats_users_links';

  @override
  ChatsUsersLinksRow createRow(Map<String, dynamic> data) =>
      ChatsUsersLinksRow(data);
}

class ChatsUsersLinksRow extends SupabaseDataRow {
  ChatsUsersLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatsUsersLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  double? get userOrder => getField<double>('user_order');
  set userOrder(double? value) => setField<double>('user_order', value);
}
