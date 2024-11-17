import '../database.dart';

class ViewPerfilsVisualizadorLinksTable
    extends SupabaseTable<ViewPerfilsVisualizadorLinksRow> {
  @override
  String get tableName => 'view_perfils_visualizador_links';

  @override
  ViewPerfilsVisualizadorLinksRow createRow(Map<String, dynamic> data) =>
      ViewPerfilsVisualizadorLinksRow(data);
}

class ViewPerfilsVisualizadorLinksRow extends SupabaseDataRow {
  ViewPerfilsVisualizadorLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPerfilsVisualizadorLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get viewPerfilId => getField<int>('view_perfil_id');
  set viewPerfilId(int? value) => setField<int>('view_perfil_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
