import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start categories Group Code

class CategoriesGroup {
  static String baseUrl = 'https://x8ki-letl-twmt.n7.xano.io/api:WbgH2QxF';
  static Map<String, String> headers = {};
  static DeleteCategoriesRecordCall deleteCategoriesRecordCall =
      DeleteCategoriesRecordCall();
  static GetCategoriesRecordCall getCategoriesRecordCall =
      GetCategoriesRecordCall();
  static EditCategoriesRecordCall editCategoriesRecordCall =
      EditCategoriesRecordCall();
  static QueryAllCategoriesRecordsCall queryAllCategoriesRecordsCall =
      QueryAllCategoriesRecordsCall();
  static AddCategoriesRecordCall addCategoriesRecordCall =
      AddCategoriesRecordCall();
}

class DeleteCategoriesRecordCall {
  Future<ApiCallResponse> call({
    int? categoriesId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete categories record.',
      apiUrl: '${CategoriesGroup.baseUrl}/categories/$categoriesId',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCategoriesRecordCall {
  Future<ApiCallResponse> call({
    int? categoriesId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get categories record',
      apiUrl: '${CategoriesGroup.baseUrl}/categories/$categoriesId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCategoriesRecordCall {
  Future<ApiCallResponse> call({
    int? categoriesId,
  }) async {
    const ffApiRequestBody = '''
{
  "categorie": "",
  "background_color": "",
  "logo": {
    "access": "public",
    "path": "",
    "name": "",
    "type": "",
    "size": 0,
    "mime": "",
    "meta": {}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit categories record',
      apiUrl: '${CategoriesGroup.baseUrl}/categories/$categoriesId',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class QueryAllCategoriesRecordsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Query all categories records',
      apiUrl: '${CategoriesGroup.baseUrl}/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? categorie(dynamic response) => (getJsonField(
        response,
        r'''$[:].categorie''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? logoUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:].logo.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddCategoriesRecordCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "categorie": "",
  "background_color": "",
  "logo": {
    "access": "public",
    "path": "",
    "name": "",
    "type": "",
    "size": 0,
    "mime": "",
    "meta": {}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add categories record',
      apiUrl: '${CategoriesGroup.baseUrl}/categories',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End categories Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
