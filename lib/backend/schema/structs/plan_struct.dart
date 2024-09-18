// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanStruct extends BaseStruct {
  PlanStruct({
    String? name,
    String? description,
    FileDStruct? image,
    double? price,
    double? discointPrice,
    DurationPlans? duration,
    int? id,
    int? drinksAvailable,
    double? discountPorcentant,
  })  : _name = name,
        _description = description,
        _image = image,
        _price = price,
        _discointPrice = discointPrice,
        _duration = duration,
        _id = id,
        _drinksAvailable = drinksAvailable,
        _discountPorcentant = discountPorcentant;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  FileDStruct? _image;
  FileDStruct get image => _image ?? FileDStruct();
  set image(FileDStruct? val) => _image = val;

  void updateImage(Function(FileDStruct) updateFn) {
    updateFn(_image ??= FileDStruct());
  }

  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "discointPrice" field.
  double? _discointPrice;
  double get discointPrice => _discointPrice ?? 0.0;
  set discointPrice(double? val) => _discointPrice = val;

  void incrementDiscointPrice(double amount) =>
      discointPrice = discointPrice + amount;

  bool hasDiscointPrice() => _discointPrice != null;

  // "duration" field.
  DurationPlans? _duration;
  DurationPlans get duration => _duration ?? DurationPlans.one_month;
  set duration(DurationPlans? val) => _duration = val;

  bool hasDuration() => _duration != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "drinksAvailable" field.
  int? _drinksAvailable;
  int get drinksAvailable => _drinksAvailable ?? 0;
  set drinksAvailable(int? val) => _drinksAvailable = val;

  void incrementDrinksAvailable(int amount) =>
      drinksAvailable = drinksAvailable + amount;

  bool hasDrinksAvailable() => _drinksAvailable != null;

  // "discountPorcentant" field.
  double? _discountPorcentant;
  double get discountPorcentant => _discountPorcentant ?? 0.0;
  set discountPorcentant(double? val) => _discountPorcentant = val;

  void incrementDiscountPorcentant(double amount) =>
      discountPorcentant = discountPorcentant + amount;

  bool hasDiscountPorcentant() => _discountPorcentant != null;

  static PlanStruct fromMap(Map<String, dynamic> data) => PlanStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: FileDStruct.maybeFromMap(data['image']),
        price: castToType<double>(data['price']),
        discointPrice: castToType<double>(data['discointPrice']),
        duration: deserializeEnum<DurationPlans>(data['duration']),
        id: castToType<int>(data['id']),
        drinksAvailable: castToType<int>(data['drinksAvailable']),
        discountPorcentant: castToType<double>(data['discountPorcentant']),
      );

  static PlanStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlanStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'image': _image?.toMap(),
        'price': _price,
        'discointPrice': _discointPrice,
        'duration': _duration?.serialize(),
        'id': _id,
        'drinksAvailable': _drinksAvailable,
        'discountPorcentant': _discountPorcentant,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'discointPrice': serializeParam(
          _discointPrice,
          ParamType.double,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.Enum,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'drinksAvailable': serializeParam(
          _drinksAvailable,
          ParamType.int,
        ),
        'discountPorcentant': serializeParam(
          _discountPorcentant,
          ParamType.double,
        ),
      }.withoutNulls;

  static PlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: FileDStruct.fromSerializableMap,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        discointPrice: deserializeParam(
          data['discointPrice'],
          ParamType.double,
          false,
        ),
        duration: deserializeParam<DurationPlans>(
          data['duration'],
          ParamType.Enum,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        drinksAvailable: deserializeParam(
          data['drinksAvailable'],
          ParamType.int,
          false,
        ),
        discountPorcentant: deserializeParam(
          data['discountPorcentant'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlanStruct &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        price == other.price &&
        discointPrice == other.discointPrice &&
        duration == other.duration &&
        id == other.id &&
        drinksAvailable == other.drinksAvailable &&
        discountPorcentant == other.discountPorcentant;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        description,
        image,
        price,
        discointPrice,
        duration,
        id,
        drinksAvailable,
        discountPorcentant
      ]);
}

PlanStruct createPlanStruct({
  String? name,
  String? description,
  FileDStruct? image,
  double? price,
  double? discointPrice,
  DurationPlans? duration,
  int? id,
  int? drinksAvailable,
  double? discountPorcentant,
}) =>
    PlanStruct(
      name: name,
      description: description,
      image: image ?? FileDStruct(),
      price: price,
      discointPrice: discointPrice,
      duration: duration,
      id: id,
      drinksAvailable: drinksAvailable,
      discountPorcentant: discountPorcentant,
    );
