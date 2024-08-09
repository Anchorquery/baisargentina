// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginationStruct extends BaseStruct {
  PaginationStruct({
    int? page,
    int? pageSize,
    int? pageCount,
    int? total,
  })  : _page = page,
        _pageSize = pageSize,
        _pageCount = pageCount,
        _total = total;

  // "page" field.
  int? _page;
  int get page => _page ?? 1;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "pageSize" field.
  int? _pageSize;
  int get pageSize => _pageSize ?? 15;
  set pageSize(int? val) => _pageSize = val;

  void incrementPageSize(int amount) => pageSize = pageSize + amount;

  bool hasPageSize() => _pageSize != null;

  // "pageCount" field.
  int? _pageCount;
  int get pageCount => _pageCount ?? 0;
  set pageCount(int? val) => _pageCount = val;

  void incrementPageCount(int amount) => pageCount = pageCount + amount;

  bool hasPageCount() => _pageCount != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static PaginationStruct fromMap(Map<String, dynamic> data) =>
      PaginationStruct(
        page: castToType<int>(data['page']),
        pageSize: castToType<int>(data['pageSize']),
        pageCount: castToType<int>(data['pageCount']),
        total: castToType<int>(data['total']),
      );

  static PaginationStruct? maybeFromMap(dynamic data) => data is Map
      ? PaginationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'page': _page,
        'pageSize': _pageSize,
        'pageCount': _pageCount,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'pageSize': serializeParam(
          _pageSize,
          ParamType.int,
        ),
        'pageCount': serializeParam(
          _pageCount,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static PaginationStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaginationStruct(
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        pageSize: deserializeParam(
          data['pageSize'],
          ParamType.int,
          false,
        ),
        pageCount: deserializeParam(
          data['pageCount'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PaginationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaginationStruct &&
        page == other.page &&
        pageSize == other.pageSize &&
        pageCount == other.pageCount &&
        total == other.total;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([page, pageSize, pageCount, total]);
}

PaginationStruct createPaginationStruct({
  int? page,
  int? pageSize,
  int? pageCount,
  int? total,
}) =>
    PaginationStruct(
      page: page,
      pageSize: pageSize,
      pageCount: pageCount,
      total: total,
    );
