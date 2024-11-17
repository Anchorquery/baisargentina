import '../database.dart';

class ViewPerfilsTable extends SupabaseTable<ViewPerfilsRow> {
  @override
  String get tableName => 'view_perfils';

  @override
  ViewPerfilsRow createRow(Map<String, dynamic> data) => ViewPerfilsRow(data);
}

class ViewPerfilsRow extends SupabaseDataRow {
  ViewPerfilsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPerfilsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get publishedAt => getField<DateTime>('published_at');
  set publishedAt(DateTime? value) => setField<DateTime>('published_at', value);

  int? get createdById => getField<int>('created_by_id');
  set createdById(int? value) => setField<int>('created_by_id', value);

  int? get updatedById => getField<int>('updated_by_id');
  set updatedById(int? value) => setField<int>('updated_by_id', value);
}
