// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'fetch_countries.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Country extends JsonSerializable with EquatableMixin {
  Country();

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  late String name;

  String? capital;

  late String emoji;

  @override
  List<Object?> get props => [name, capital, emoji];
  @override
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAllCountries$Query extends JsonSerializable with EquatableMixin {
  GetAllCountries$Query();

  factory GetAllCountries$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAllCountries$QueryFromJson(json);

  late List<Country> countries;

  @override
  List<Object?> get props => [countries];
  @override
  Map<String, dynamic> toJson() => _$GetAllCountries$QueryToJson(this);
}

final GET_ALL_COUNTRIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getAllCountries'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'countries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'capital'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'emoji'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetAllCountriesQuery
    extends GraphQLQuery<GetAllCountries$Query, JsonSerializable> {
  GetAllCountriesQuery();

  @override
  final DocumentNode document = GET_ALL_COUNTRIES_QUERY_DOCUMENT;

  @override
  final String operationName = 'getAllCountries';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetAllCountries$Query parse(Map<String, dynamic> json) =>
      GetAllCountries$Query.fromJson(json);
}
