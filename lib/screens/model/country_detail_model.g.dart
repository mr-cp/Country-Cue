// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDetailModelImpl _$$CountryDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryDetailModelImpl(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      tld: (json['tld'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cca2: json['cca2'] as String?,
      ccn3: json['ccn3'] as String?,
      cca3: json['cca3'] as String?,
      cioc: json['cioc'] as String?,
      independent: json['independent'] as bool?,
      status: json['status'] as String?,
      unMember: json['unMember'] as bool?,
      currencies: json['currencies'] == null
          ? null
          : Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
      idd: json['idd'] == null
          ? null
          : Idd.fromJson(json['idd'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      altSpellings: (json['altSpellings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      languages: json['languages'] == null
          ? null
          : Languages.fromJson(json['languages'] as Map<String, dynamic>),
      translations: json['translations'] == null
          ? null
          : Translations.fromJson(json['translations'] as Map<String, dynamic>),
      latlng: (json['latlng'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      landlocked: json['landlocked'] as bool?,
      borders:
          (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      area: (json['area'] as num?)?.toInt(),
      demonyms: json['demonyms'] == null
          ? null
          : Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>),
      flag: json['flag'] as String?,
      maps: json['maps'] == null
          ? null
          : Maps.fromJson(json['maps'] as Map<String, dynamic>),
      population: (json['population'] as num?)?.toInt(),
      gini: json['gini'] == null
          ? null
          : Gini.fromJson(json['gini'] as Map<String, dynamic>),
      fifa: json['fifa'] as String?,
      car: json['car'] == null
          ? null
          : Car.fromJson(json['car'] as Map<String, dynamic>),
      timezones: (json['timezones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      continents: (json['continents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      flags: json['flags'] == null
          ? null
          : Flags.fromJson(json['flags'] as Map<String, dynamic>),
      coatOfArms: json['coatOfArms'] == null
          ? null
          : CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
      startOfWeek: json['startOfWeek'] as String?,
      capitalInfo: json['capitalInfo'] == null
          ? null
          : CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>),
      postalCode: json['postalCode'] == null
          ? null
          : PostalCode.fromJson(json['postalCode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryDetailModelImplToJson(
        _$CountryDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tld': instance.tld,
      'cca2': instance.cca2,
      'ccn3': instance.ccn3,
      'cca3': instance.cca3,
      'cioc': instance.cioc,
      'independent': instance.independent,
      'status': instance.status,
      'unMember': instance.unMember,
      'currencies': instance.currencies,
      'idd': instance.idd,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': instance.region,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'translations': instance.translations,
      'latlng': instance.latlng,
      'landlocked': instance.landlocked,
      'borders': instance.borders,
      'area': instance.area,
      'demonyms': instance.demonyms,
      'flag': instance.flag,
      'maps': instance.maps,
      'population': instance.population,
      'gini': instance.gini,
      'fifa': instance.fifa,
      'car': instance.car,
      'timezones': instance.timezones,
      'continents': instance.continents,
      'flags': instance.flags,
      'coatOfArms': instance.coatOfArms,
      'startOfWeek': instance.startOfWeek,
      'capitalInfo': instance.capitalInfo,
      'postalCode': instance.postalCode,
    };

_$CapitalInfoImpl _$$CapitalInfoImplFromJson(Map<String, dynamic> json) =>
    _$CapitalInfoImpl(
      latlng: (json['latlng'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$CapitalInfoImplToJson(_$CapitalInfoImpl instance) =>
    <String, dynamic>{
      'latlng': instance.latlng,
    };

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      signs:
          (json['signs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      side: json['side'] as String?,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'signs': instance.signs,
      'side': instance.side,
    };

_$CoatOfArmsImpl _$$CoatOfArmsImplFromJson(Map<String, dynamic> json) =>
    _$CoatOfArmsImpl(
      png: json['png'] as String?,
      svg: json['svg'] as String?,
    );

Map<String, dynamic> _$$CoatOfArmsImplToJson(_$CoatOfArmsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
    };

_$CurrenciesImpl _$$CurrenciesImplFromJson(Map<String, dynamic> json) =>
    _$CurrenciesImpl(
      eur: json['eur'] == null
          ? null
          : Eur.fromJson(json['eur'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrenciesImplToJson(_$CurrenciesImpl instance) =>
    <String, dynamic>{
      'eur': instance.eur,
    };

_$EurImpl _$$EurImplFromJson(Map<String, dynamic> json) => _$EurImpl(
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$$EurImplToJson(_$EurImpl instance) => <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
    };

_$DemonymsImpl _$$DemonymsImplFromJson(Map<String, dynamic> json) =>
    _$DemonymsImpl(
      eng: json['eng'] == null
          ? null
          : Eng.fromJson(json['eng'] as Map<String, dynamic>),
      fra: json['fra'] == null
          ? null
          : Eng.fromJson(json['fra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DemonymsImplToJson(_$DemonymsImpl instance) =>
    <String, dynamic>{
      'eng': instance.eng,
      'fra': instance.fra,
    };

_$EngImpl _$$EngImplFromJson(Map<String, dynamic> json) => _$EngImpl(
      f: json['f'] as String?,
      m: json['m'] as String?,
    );

Map<String, dynamic> _$$EngImplToJson(_$EngImpl instance) => <String, dynamic>{
      'f': instance.f,
      'm': instance.m,
    };

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
      png: json['png'] as String?,
      svg: json['svg'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
      'alt': instance.alt,
    };

_$GiniImpl _$$GiniImplFromJson(Map<String, dynamic> json) => _$GiniImpl(
      the2016: (json['the2016'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GiniImplToJson(_$GiniImpl instance) =>
    <String, dynamic>{
      'the2016': instance.the2016,
    };

_$IddImpl _$$IddImplFromJson(Map<String, dynamic> json) => _$IddImpl(
      root: json['root'] as String?,
      suffixes: (json['suffixes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$IddImplToJson(_$IddImpl instance) => <String, dynamic>{
      'root': instance.root,
      'suffixes': instance.suffixes,
    };

_$LanguagesImpl _$$LanguagesImplFromJson(Map<String, dynamic> json) =>
    _$LanguagesImpl(
      deu: json['deu'] as String?,
    );

Map<String, dynamic> _$$LanguagesImplToJson(_$LanguagesImpl instance) =>
    <String, dynamic>{
      'deu': instance.deu,
    };

_$MapsImpl _$$MapsImplFromJson(Map<String, dynamic> json) => _$MapsImpl(
      googleMaps: json['googleMaps'] as String?,
      openStreetMaps: json['openStreetMaps'] as String?,
    );

Map<String, dynamic> _$$MapsImplToJson(_$MapsImpl instance) =>
    <String, dynamic>{
      'googleMaps': instance.googleMaps,
      'openStreetMaps': instance.openStreetMaps,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      common: json['common'] as String?,
      official: json['official'] as String?,
      nativeName: json['nativeName'] == null
          ? null
          : NativeName.fromJson(json['nativeName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName,
    };

_$NativeNameImpl _$$NativeNameImplFromJson(Map<String, dynamic> json) =>
    _$NativeNameImpl(
      deu: json['deu'] == null
          ? null
          : Ara.fromJson(json['deu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NativeNameImplToJson(_$NativeNameImpl instance) =>
    <String, dynamic>{
      'deu': instance.deu,
    };

_$AraImpl _$$AraImplFromJson(Map<String, dynamic> json) => _$AraImpl(
      official: json['official'] as String?,
      common: json['common'] as String?,
    );

Map<String, dynamic> _$$AraImplToJson(_$AraImpl instance) => <String, dynamic>{
      'official': instance.official,
      'common': instance.common,
    };

_$PostalCodeImpl _$$PostalCodeImplFromJson(Map<String, dynamic> json) =>
    _$PostalCodeImpl(
      format: json['format'] as String?,
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$$PostalCodeImplToJson(_$PostalCodeImpl instance) =>
    <String, dynamic>{
      'format': instance.format,
      'regex': instance.regex,
    };

_$TranslationsImpl _$$TranslationsImplFromJson(Map<String, dynamic> json) =>
    _$TranslationsImpl(
      ara: json['ara'] == null
          ? null
          : Ara.fromJson(json['ara'] as Map<String, dynamic>),
      bre: json['bre'] == null
          ? null
          : Ara.fromJson(json['bre'] as Map<String, dynamic>),
      ces: json['ces'] == null
          ? null
          : Ara.fromJson(json['ces'] as Map<String, dynamic>),
      cym: json['cym'] == null
          ? null
          : Ara.fromJson(json['cym'] as Map<String, dynamic>),
      deu: json['deu'] == null
          ? null
          : Ara.fromJson(json['deu'] as Map<String, dynamic>),
      est: json['est'] == null
          ? null
          : Ara.fromJson(json['est'] as Map<String, dynamic>),
      fin: json['fin'] == null
          ? null
          : Ara.fromJson(json['fin'] as Map<String, dynamic>),
      fra: json['fra'] == null
          ? null
          : Ara.fromJson(json['fra'] as Map<String, dynamic>),
      hrv: json['hrv'] == null
          ? null
          : Ara.fromJson(json['hrv'] as Map<String, dynamic>),
      hun: json['hun'] == null
          ? null
          : Ara.fromJson(json['hun'] as Map<String, dynamic>),
      ita: json['ita'] == null
          ? null
          : Ara.fromJson(json['ita'] as Map<String, dynamic>),
      jpn: json['jpn'] == null
          ? null
          : Ara.fromJson(json['jpn'] as Map<String, dynamic>),
      kor: json['kor'] == null
          ? null
          : Ara.fromJson(json['kor'] as Map<String, dynamic>),
      nld: json['nld'] == null
          ? null
          : Ara.fromJson(json['nld'] as Map<String, dynamic>),
      per: json['per'] == null
          ? null
          : Ara.fromJson(json['per'] as Map<String, dynamic>),
      pol: json['pol'] == null
          ? null
          : Ara.fromJson(json['pol'] as Map<String, dynamic>),
      por: json['por'] == null
          ? null
          : Ara.fromJson(json['por'] as Map<String, dynamic>),
      rus: json['rus'] == null
          ? null
          : Ara.fromJson(json['rus'] as Map<String, dynamic>),
      slk: json['slk'] == null
          ? null
          : Ara.fromJson(json['slk'] as Map<String, dynamic>),
      spa: json['spa'] == null
          ? null
          : Ara.fromJson(json['spa'] as Map<String, dynamic>),
      srp: json['srp'] == null
          ? null
          : Ara.fromJson(json['srp'] as Map<String, dynamic>),
      swe: json['swe'] == null
          ? null
          : Ara.fromJson(json['swe'] as Map<String, dynamic>),
      tur: json['tur'] == null
          ? null
          : Ara.fromJson(json['tur'] as Map<String, dynamic>),
      urd: json['urd'] == null
          ? null
          : Ara.fromJson(json['urd'] as Map<String, dynamic>),
      zho: json['zho'] == null
          ? null
          : Ara.fromJson(json['zho'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TranslationsImplToJson(_$TranslationsImpl instance) =>
    <String, dynamic>{
      'ara': instance.ara,
      'bre': instance.bre,
      'ces': instance.ces,
      'cym': instance.cym,
      'deu': instance.deu,
      'est': instance.est,
      'fin': instance.fin,
      'fra': instance.fra,
      'hrv': instance.hrv,
      'hun': instance.hun,
      'ita': instance.ita,
      'jpn': instance.jpn,
      'kor': instance.kor,
      'nld': instance.nld,
      'per': instance.per,
      'pol': instance.pol,
      'por': instance.por,
      'rus': instance.rus,
      'slk': instance.slk,
      'spa': instance.spa,
      'srp': instance.srp,
      'swe': instance.swe,
      'tur': instance.tur,
      'urd': instance.urd,
      'zho': instance.zho,
    };
