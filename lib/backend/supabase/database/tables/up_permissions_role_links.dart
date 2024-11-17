import '../database.dart';

class UpPermissionsRoleLinksTable
    extends SupabaseTable<UpPermissionsRoleLinksRow> {
  @override
  String get tableName => 'up_permissions_role_links';

  @override
  UpPermissionsRoleLinksRow createRow(Map<String, dynamic> data) =>
      UpPermissionsRoleLinksRow(data);
}

class UpPermissionsRoleLinksRow extends SupabaseDataRow {
  UpPermissionsRoleLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpPermissionsRoleLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get permissionId => getField<int>('permission_id');
  set permissionId(int? value) => setField<int>('permission_id', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  double? get permissionOrder => getField<double>('permission_order');
  set permissionOrder(double? value) =>
      setField<double>('permission_order', value);
}
