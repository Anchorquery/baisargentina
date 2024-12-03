import '../database.dart';

class UpUsersTable extends SupabaseTable<UpUsersRow> {
  @override
  String get tableName => 'up_users';

  @override
  UpUsersRow createRow(Map<String, dynamic> data) => UpUsersRow(data);
}

class UpUsersRow extends SupabaseDataRow {
  UpUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UpUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get provider => getField<String>('provider');
  set provider(String? value) => setField<String>('provider', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get resetPasswordToken => getField<String>('reset_password_token');
  set resetPasswordToken(String? value) =>
      setField<String>('reset_password_token', value);

  String? get confirmationToken => getField<String>('confirmation_token');
  set confirmationToken(String? value) =>
      setField<String>('confirmation_token', value);

  bool? get confirmed => getField<bool>('confirmed');
  set confirmed(bool? value) => setField<bool>('confirmed', value);

  bool? get blocked => getField<bool>('blocked');
  set blocked(bool? value) => setField<bool>('blocked', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  DateTime? get birth => getField<DateTime>('birth');
  set birth(DateTime? value) => setField<DateTime>('birth', value);

  String? get university => getField<String>('university');
  set university(String? value) => setField<String>('university', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  bool? get inArgentina => getField<bool>('in_argentina');
  set inArgentina(bool? value) => setField<bool>('in_argentina', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);

  bool? get isOnline => getField<bool>('is_online');
  set isOnline(bool? value) => setField<bool>('is_online', value);

  DateTime? get lastTimeConexion => getField<DateTime>('last_time_conexion');
  set lastTimeConexion(DateTime? value) =>
      setField<DateTime>('last_time_conexion', value);

  bool? get isInvited => getField<bool>('is_invited');
  set isInvited(bool? value) => setField<bool>('is_invited', value);
}
