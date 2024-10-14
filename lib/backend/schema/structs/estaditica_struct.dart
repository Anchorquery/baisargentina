// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstaditicaStruct extends BaseStruct {
  EstaditicaStruct({
    List<String>? labels,
    int? total,
    List<int>? values,
  })  : _labels = labels,
        _total = total,
        _values = values;

  // "labels" field.
  List<String>? _labels;
  List<String> get labels => _labels ?? const [];
  set labels(List<String>? val) => _labels = val;

  void updateLabels(Function(List<String>) updateFn) {
    updateFn(_labels ??= []);
  }

  bool hasLabels() => _labels != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "values" field.
  List<int>? _values;
  List<int> get values => _values ?? const [];
  set values(List<int>? val) => _values = val;

  void updateValues(Function(List<int>) updateFn) {
    updateFn(_values ??= []);
  }

  bool hasValues() => _values != null;

  static EstaditicaStruct fromMap(Map<String, dynamic> data) =>
      EstaditicaStruct(
        labels: getDataList(data['labels']),
        total: castToType<int>(data['total']),
        values: getDataList(data['values']),
      );

  static EstaditicaStruct? maybeFromMap(dynamic data) => data is Map
      ? EstaditicaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'labels': _labels,
        'total': _total,
        'values': _values,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'labels': serializeParam(
          _labels,
          ParamType.String,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'values': serializeParam(
          _values,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static EstaditicaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstaditicaStruct(
        labels: deserializeParam<String>(
          data['labels'],
          ParamType.String,
          true,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        values: deserializeParam<int>(
          data['values'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'EstaditicaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EstaditicaStruct &&
        listEquality.equals(labels, other.labels) &&
        total == other.total &&
        listEquality.equals(values, other.values);
  }

  @override
  int get hashCode => const ListEquality().hash([labels, total, values]);
}

EstaditicaStruct createEstaditicaStruct({
  int? total,
}) =>
    EstaditicaStruct(
      total: total,
    );
