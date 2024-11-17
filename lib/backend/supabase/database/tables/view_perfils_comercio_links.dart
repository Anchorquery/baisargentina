import '../database.dart';

class ViewPerfilsComercioLinksTable
    extends SupabaseTable<ViewPerfilsComercioLinksRow> {
  @override
  String get tableName => 'view_perfils_comercio_links';

  @override
  ViewPerfilsComercioLinksRow createRow(Map<String, dynamic> data) =>
      ViewPerfilsComercioLinksRow(data);
}

class ViewPerfilsComercioLinksRow extends SupabaseDataRow {
  ViewPerfilsComercioLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPerfilsComercioLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get viewPerfilId => getField<int>('view_perfil_id');
  set viewPerfilId(int? value) => setField<int>('view_perfil_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
