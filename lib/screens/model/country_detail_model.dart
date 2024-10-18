// To parse this JSON data, do
//
//     final countryDetailModel = countryDetailModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'country_detail_model.freezed.dart';
part 'country_detail_model.g.dart';

List<CountryDetailModel> countryDetailModelFromJson(String str) => List<CountryDetailModel>.from(json.decode(str).map((x) => CountryDetailModel.fromJson(x)));

String countryDetailModelToJson(List<CountryDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CountryDetailModel with _$CountryDetailModel {
    const factory CountryDetailModel({
        Name? name,
        List<String>? tld,
        String? cca2,
        String? ccn3,
        String? cca3,
        String? cioc,
        bool? independent,
        String? status,
        bool? unMember,
        Currencies? currencies,
        Idd? idd,
        List<String>? capital,
        List<String>? altSpellings,
        String? region,
        String? subregion,
        Languages? languages,
        Translations? translations,
        List<int>? latlng,
        bool? landlocked,
        List<String>? borders,
        int? area,
        Demonyms? demonyms,
        String? flag,
        Maps? maps,
        int? population,
        Gini? gini,
        String? fifa,
        Car? car,
        List<String>? timezones,
        List<String>? continents,
        Flags? flags,
        CoatOfArms? coatOfArms,
        String? startOfWeek,
        CapitalInfo? capitalInfo,
        PostalCode? postalCode,
    }) = _CountryDetailModel;

    factory CountryDetailModel.fromJson(Map<String, dynamic> json) => _$CountryDetailModelFromJson(json);
}

@freezed
class CapitalInfo with _$CapitalInfo {
    const factory CapitalInfo({
        List<double>? latlng,
    }) = _CapitalInfo;

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => _$CapitalInfoFromJson(json);
}

@freezed
class Car with _$Car {
    const factory Car({
        List<String>? signs,
        String? side,
    }) = _Car;

    factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}

@freezed
class CoatOfArms with _$CoatOfArms {
    const factory CoatOfArms({
        String? png,
        String? svg,
    }) = _CoatOfArms;

    factory CoatOfArms.fromJson(Map<String, dynamic> json) => _$CoatOfArmsFromJson(json);
}

@freezed
class Currencies with _$Currencies {
    const factory Currencies({
        Eur? eur,
    }) = _Currencies;

    factory Currencies.fromJson(Map<String, dynamic> json) => _$CurrenciesFromJson(json);
}

@freezed
class Eur with _$Eur {
    const factory Eur({
        String? name,
        String? symbol,
    }) = _Eur;

    factory Eur.fromJson(Map<String, dynamic> json) => _$EurFromJson(json);
}

@freezed
class Demonyms with _$Demonyms {
    const factory Demonyms({
        Eng? eng,
        Eng? fra,
    }) = _Demonyms;

    factory Demonyms.fromJson(Map<String, dynamic> json) => _$DemonymsFromJson(json);
}

@freezed
class Eng with _$Eng {
    const factory Eng({
        String? f,
        String? m,
    }) = _Eng;

    factory Eng.fromJson(Map<String, dynamic> json) => _$EngFromJson(json);
}

@freezed
class Flags with _$Flags {
    const factory Flags({
        String? png,
        String? svg,
        String? alt,
    }) = _Flags;

    factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}

@freezed
class Gini with _$Gini {
    const factory Gini({
        double? the2016,
    }) = _Gini;

    factory Gini.fromJson(Map<String, dynamic> json) => _$GiniFromJson(json);
}

@freezed
class Idd with _$Idd {
    const factory Idd({
        String? root,
        List<String>? suffixes,
    }) = _Idd;

    factory Idd.fromJson(Map<String, dynamic> json) => _$IddFromJson(json);
}

@freezed
class Languages with _$Languages {
    const factory Languages({
        String? deu,
    }) = _Languages;

    factory Languages.fromJson(Map<String, dynamic> json) => _$LanguagesFromJson(json);
}

@freezed
class Maps with _$Maps {
    const factory Maps({
        String? googleMaps,
        String? openStreetMaps,
    }) = _Maps;

    factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);
}

@freezed
class Name with _$Name {
    const factory Name({
        String? common,
        String? official,
        NativeName? nativeName,
    }) = _Name;

    factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class NativeName with _$NativeName {
    const factory NativeName({
        Ara? deu,
    }) = _NativeName;

    factory NativeName.fromJson(Map<String, dynamic> json) => _$NativeNameFromJson(json);
}

@freezed
class Ara with _$Ara {
    const factory Ara({
        String? official,
        String? common,
    }) = _Ara;

    factory Ara.fromJson(Map<String, dynamic> json) => _$AraFromJson(json);
}

@freezed
class PostalCode with _$PostalCode {
    const factory PostalCode({
        String? format,
        String? regex,
    }) = _PostalCode;

    factory PostalCode.fromJson(Map<String, dynamic> json) => _$PostalCodeFromJson(json);
}

@freezed
class Translations with _$Translations {
    const factory Translations({
        Ara? ara,
        Ara? bre,
        Ara? ces,
        Ara? cym,
        Ara? deu,
        Ara? est,
        Ara? fin,
        Ara? fra,
        Ara? hrv,
        Ara? hun,
        Ara? ita,
        Ara? jpn,
        Ara? kor,
        Ara? nld,
        Ara? per,
        Ara? pol,
        Ara? por,
        Ara? rus,
        Ara? slk,
        Ara? spa,
        Ara? srp,
        Ara? swe,
        Ara? tur,
        Ara? urd,
        Ara? zho,
    }) = _Translations;

    factory Translations.fromJson(Map<String, dynamic> json) => _$TranslationsFromJson(json);
}
