// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesStruct extends FFFirebaseStruct {
  CategoriesStruct({
    List<int>? id,
    List<String>? categorie,
    List<String>? logoUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _categorie = categorie,
        _logoUrl = logoUrl,
        super(firestoreUtilData);

  // "id" field.
  List<int>? _id;
  List<int> get id => _id ?? const [];
  set id(List<int>? val) => _id = val;
  void updateId(Function(List<int>) updateFn) => updateFn(_id ??= []);
  bool hasId() => _id != null;

  // "categorie" field.
  List<String>? _categorie;
  List<String> get categorie => _categorie ?? const [];
  set categorie(List<String>? val) => _categorie = val;
  void updateCategorie(Function(List<String>) updateFn) =>
      updateFn(_categorie ??= []);
  bool hasCategorie() => _categorie != null;

  // "logoUrl" field.
  List<String>? _logoUrl;
  List<String> get logoUrl => _logoUrl ?? const [];
  set logoUrl(List<String>? val) => _logoUrl = val;
  void updateLogoUrl(Function(List<String>) updateFn) =>
      updateFn(_logoUrl ??= []);
  bool hasLogoUrl() => _logoUrl != null;

  static CategoriesStruct fromMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        id: getDataList(data['id']),
        categorie: getDataList(data['categorie']),
        logoUrl: getDataList(data['logoUrl']),
      );

  static CategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'categorie': _categorie,
        'logoUrl': _logoUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
          true,
        ),
        'categorie': serializeParam(
          _categorie,
          ParamType.String,
          true,
        ),
        'logoUrl': serializeParam(
          _logoUrl,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static CategoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        id: deserializeParam<int>(
          data['id'],
          ParamType.int,
          true,
        ),
        categorie: deserializeParam<String>(
          data['categorie'],
          ParamType.String,
          true,
        ),
        logoUrl: deserializeParam<String>(
          data['logoUrl'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoriesStruct &&
        listEquality.equals(id, other.id) &&
        listEquality.equals(categorie, other.categorie) &&
        listEquality.equals(logoUrl, other.logoUrl);
  }

  @override
  int get hashCode => const ListEquality().hash([id, categorie, logoUrl]);
}

CategoriesStruct createCategoriesStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriesStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriesStruct? updateCategoriesStruct(
  CategoriesStruct? categories, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categories
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoriesStructData(
  Map<String, dynamic> firestoreData,
  CategoriesStruct? categories,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categories == null) {
    return;
  }
  if (categories.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categories.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriesData = getCategoriesFirestoreData(categories, forFieldValue);
  final nestedData = categoriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = categories.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriesFirestoreData(
  CategoriesStruct? categories, [
  bool forFieldValue = false,
]) {
  if (categories == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categories.toMap());

  // Add any Firestore field values
  categories.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriesListFirestoreData(
  List<CategoriesStruct>? categoriess,
) =>
    categoriess?.map((e) => getCategoriesFirestoreData(e, true)).toList() ?? [];
