import '../database.dart';

class AdminUsersTable extends SupabaseTable<AdminUsersRow> {
  @override
  String get tableName => 'admin_users';

  @override
  AdminUsersRow createRow(Map<String, dynamic> data) => AdminUsersRow(data);
}

class AdminUsersRow extends SupabaseDataRow {
  AdminUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get resetPasswordToken => getField<String>('reset_password_token');
  set resetPasswordToken(String? value) =>
      setField<String>('reset_password_token', value);

  String? get registrationToken => getField<String>('registration_token');
  set registrationToken(String? value) =>
      setField<String>('registration_token', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool? get blocked => getField<bool>('blocked');
  set blocked(bool? value) => setField<bool>('blocked', value);

  String? get preferedLanguage => getField<String>('prefered_language');
  set preferedLanguage(String? value) =>
      setField<String>('prefered_language', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
