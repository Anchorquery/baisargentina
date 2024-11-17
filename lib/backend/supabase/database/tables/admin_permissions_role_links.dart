import '../database.dart';

class AdminPermissionsRoleLinksTable
    extends SupabaseTable<AdminPermissionsRoleLinksRow> {
  @override
  String get tableName => 'admin_permissions_role_links';

  @override
  AdminPermissionsRoleLinksRow createRow(Map<String, dynamic> data) =>
      AdminPermissionsRoleLinksRow(data);
}

class AdminPermissionsRoleLinksRow extends SupabaseDataRow {
  AdminPermissionsRoleLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminPermissionsRoleLinksTable();

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
