import '../database.dart';

class UpUsersRoleLinksTable extends SupabaseTable<UpUsersRoleLinksRow> {
  @override
  String get tableName => 'up_users_role_links';

  @override
  UpUsersRoleLinksRow createRow(Map<String, dynamic> data) =>
      UpUsersRoleLinksRow(data);
}

class UpUsersRoleLinksRow extends SupabaseDataRow {
  UpUsersRoleLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpUsersRoleLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  double? get userOrder => getField<double>('user_order');
  set userOrder(double? value) => setField<double>('user_order', value);
}
