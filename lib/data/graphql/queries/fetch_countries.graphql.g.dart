// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'fetch_countries.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return Continent()
    ..name = json['name'] as String
    ..code = json['code'] as String;
}

Map<String, dynamic> _$ContinentToJson(Continent instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return Language()
    ..name = json['name'] as String?
    ..code = json['code'] as String;
}

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
    };

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country()
    ..name = json['name'] as String
    ..capital = json['capital'] as String?
    ..emoji = json['emoji'] as String
    ..continent = Continent.fromJson(json['continent'] as Map<String, dynamic>)
    ..languages = (json['languages'] as List<dynamic>)
        .map((e) => Language.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'capital': instance.capital,
      'emoji': instance.emoji,
      'continent': instance.continent.toJson(),
      'languages': instance.languages.map((e) => e.toJson()).toList(),
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
