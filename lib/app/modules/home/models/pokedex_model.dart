// To parse this JSON data, do
//
//     final pokedexModel = pokedexModelFromJson(jsonString);

import 'dart:convert';

PokedexModel pokedexModelFromJson(String str) =>
    PokedexModel.fromJson(json.decode(str));

String pokedexModelToJson(PokedexModel data) => json.encode(data.toJson());

class PokedexModel {
  List<Description> descriptions;
  int id;
  bool isMainSeries;
  String name;
  List<Name> names;
  List<PokemonEntry> pokemonEntries;
  Region region;
  List<Region> versionGroups;

  PokedexModel({
    this.descriptions,
    this.id,
    this.isMainSeries,
    this.name,
    this.names,
    this.pokemonEntries,
    this.region,
    this.versionGroups,
  });

  factory PokedexModel.fromJson(Map<String, dynamic> json) => PokedexModel(
        descriptions: List<Description>.from(
            json["descriptions"].map((x) => Description.fromJson(x))),
        id: json["id"],
        isMainSeries: json["is_main_series"],
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pokemonEntries: List<PokemonEntry>.from(
            json["pokemon_entries"].map((x) => PokemonEntry.fromJson(x))),
        region: Region.fromJson(json["region"]),
        versionGroups: List<Region>.from(
            json["version_groups"].map((x) => Region.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "descriptions": List<dynamic>.from(descriptions.map((x) => x.toJson())),
        "id": id,
        "is_main_series": isMainSeries,
        "name": name,
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "pokemon_entries":
            List<dynamic>.from(pokemonEntries.map((x) => x.toJson())),
        "region": region.toJson(),
        "version_groups":
            List<dynamic>.from(versionGroups.map((x) => x.toJson())),
      };
}

class Description {
  String description;
  Region language;

  Description({
    this.description,
    this.language,
  });

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        description: json["description"],
        language: Region.fromJson(json["language"]),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "language": language.toJson(),
      };
}

class Region {
  String name;
  String url;

  Region({
    this.name,
    this.url,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Name {
  Region language;
  String name;

  Name({
    this.language,
    this.name,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        language: Region.fromJson(json["language"]),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "language": language.toJson(),
        "name": name,
      };
}

class PokemonEntry {
  int entryNumber;
  Region pokemonSpecies;

  PokemonEntry({
    this.entryNumber,
    this.pokemonSpecies,
  });

  factory PokemonEntry.fromJson(Map<String, dynamic> json) => PokemonEntry(
        entryNumber: json["entry_number"],
        pokemonSpecies: Region.fromJson(json["pokemon_species"]),
      );

  Map<String, dynamic> toJson() => {
        "entry_number": entryNumber,
        "pokemon_species": pokemonSpecies.toJson(),
      };
}
