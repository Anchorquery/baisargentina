import '../database.dart';

class StrapiReleaseActionsReleaseLinksTable
    extends SupabaseTable<StrapiReleaseActionsReleaseLinksRow> {
  @override
  String get tableName => 'strapi_release_actions_release_links';

  @override
  StrapiReleaseActionsReleaseLinksRow createRow(Map<String, dynamic> data) =>
      StrapiReleaseActionsReleaseLinksRow(data);
}

class StrapiReleaseActionsReleaseLinksRow extends SupabaseDataRow {
  StrapiReleaseActionsReleaseLinksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StrapiReleaseActionsReleaseLinksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get releaseActionId => getField<int>('release_action_id');
  set releaseActionId(int? value) => setField<int>('release_action_id', value);

  int? get releaseId => getField<int>('release_id');
  set releaseId(int? value) => setField<int>('release_id', value);

  double? get releaseActionOrder => getField<double>('release_action_order');
  set releaseActionOrder(double? value) =>
      setField<double>('release_action_order', value);
}
