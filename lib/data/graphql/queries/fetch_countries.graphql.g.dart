// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'fetch_countries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country()
    ..name = json['name'] as String
    ..capital = json['capital'] as String?
    ..emoji = json['emoji'] as String;
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'emoji': instance.emoji,
    };

GetAllCountries$Query _$GetAllCountries$QueryFromJson(
    Map<String, dynamic> json) {
  return GetAllCountries$Query()
    ..countries = (json['countries'] as List<dynamic>)
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$GetAllCountries$QueryToJson(
        GetAllCountries$Query instance) =>
    <String, dynamic>{
      'countries': instance.countries.map((e) => e.toJson()).toList(),
    };
