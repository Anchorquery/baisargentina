import '../database.dart';

class AdminUsersRolesLinksTable extends SupabaseTable<AdminUsersRolesLinksRow> {
  @override
  String get tableName => 'admin_users_roles_links';

  @override
  AdminUsersRolesLinksRow createRow(Map<String, dynamic> data) =>
      AdminUsersRolesLinksRow(data);
}

class AdminUsersRolesLinksRow extends SupabaseDataRow {
  AdminUsersRolesLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminUsersRolesLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  double? get roleOrder => getField<double>('role_order');
  set roleOrder(double? value) => setField<double>('role_order', value);

  double? get userOrder => getField<double>('user_order');
  set userOrder(double? value) => setField<double>('user_order', value);
}
