import 'dart:convert';

class PokemonSpecies {
  final int baseHappiness;
  final int captureRate;
  final CorPokemon color;
  final List<CorPokemon> eggGroups;
  final EvolutionChain evolutionChain;
  final dynamic evolvesFromSpecies;
  final List<FlavorTextEntry> flavorTextEntries;
  final List<dynamic> formDescriptions;
  final bool formsSwitchable;
  final int genderRate;
  final List<Genus> genera;
  final CorPokemon generation;
  final CorPokemon growthRate;
  final CorPokemon habitat;
  final bool hasGenderDifferences;
  final int hatchCounter;
  final int id;
  final bool isBaby;
  final String name;
  final List<Name> names;
  final int order;
  final List<PalParkEncounter> palParkEncounters;
  final List<PokedexNumber> pokedexNumbers;
  final CorPokemon shape;
  final List<Variety> varieties;

  PokemonSpecies({
    this.baseHappiness,
    this.captureRate,
    this.color,
    this.eggGroups,
    this.evolutionChain,
    this.evolvesFromSpecies,
    this.flavorTextEntries,
    this.formDescriptions,
    this.formsSwitchable,
    this.genderRate,
    this.genera,
    this.generation,
    this.growthRate,
    this.habitat,
    this.hasGenderDifferences,
    this.hatchCounter,
    this.id,
    this.isBaby,
    this.name,
    this.names,
    this.order,
    this.palParkEncounters,
    this.pokedexNumbers,
    this.shape,
    this.varieties,
  });

  factory PokemonSpecies.fromJson(String str) =>
      PokemonSpecies.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokemonSpecies.fromMap(Map<String, dynamic> json) => PokemonSpecies(
        baseHappiness: json["base_happiness"],
        captureRate: json["capture_rate"],
        color: CorPokemon.fromMap(json["color"]),
        eggGroups:
            List<CorPokemon>.from(json["egg_groups"].map((x) => CorPokemon.fromMap(x))),
        evolutionChain: EvolutionChain.fromMap(json["evolution_chain"]),
        evolvesFromSpecies: json["evolves_from_species"],
        flavorTextEntries: List<FlavorTextEntry>.from(
            json["flavor_text_entries"].map((x) => FlavorTextEntry.fromMap(x))),
        formDescriptions:
            List<dynamic>.from(json["form_descriptions"].map((x) => x)),
        formsSwitchable: json["forms_switchable"],
        genderRate: json["gender_rate"],
        genera: List<Genus>.from(json["genera"].map((x) => Genus.fromMap(x))),
        generation: CorPokemon.fromMap(json["generation"]),
        growthRate: CorPokemon.fromMap(json["growth_rate"]),
        habitat: CorPokemon.fromMap(json["habitat"]),
        hasGenderDifferences: json["has_gender_differences"],
        hatchCounter: json["hatch_counter"],
        id: json["id"],
        isBaby: json["is_baby"],
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromMap(x))),
        order: json["order"],
        palParkEncounters: List<PalParkEncounter>.from(
            json["pal_park_encounters"]
                .map((x) => PalParkEncounter.fromMap(x))),
        pokedexNumbers: List<PokedexNumber>.from(
            json["pokedex_numbers"].map((x) => PokedexNumber.fromMap(x))),
        shape: CorPokemon.fromMap(json["shape"]),
        varieties: List<Variety>.from(
            json["varieties"].map((x) => Variety.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "base_happiness": baseHappiness,
        "capture_rate": captureRate,
        "color": color.toMap(),
        "egg_groups": List<dynamic>.from(eggGroups.map((x) => x.toMap())),
        "evolution_chain": evolutionChain.toMap(),
        "evolves_from_species": evolvesFromSpecies,
        "flavor_text_entries":
            List<dynamic>.from(flavorTextEntries.map((x) => x.toMap())),
        "form_descriptions": List<dynamic>.from(formDescriptions.map((x) => x)),
        "forms_switchable": formsSwitchable,
        "gender_rate": genderRate,
        "genera": List<dynamic>.from(genera.map((x) => x.toMap())),
        "generation": generation.toMap(),
        "growth_rate": growthRate.toMap(),
        "habitat": habitat.toMap(),
        "has_gender_differences": hasGenderDifferences,
        "hatch_counter": hatchCounter,
        "id": id,
        "is_baby": isBaby,
        "name": name,
        "names": List<dynamic>.from(names.map((x) => x.toMap())),
        "order": order,
        "pal_park_encounters":
            List<dynamic>.from(palParkEncounters.map((x) => x.toMap())),
        "pokedex_numbers":
            List<dynamic>.from(pokedexNumbers.map((x) => x.toMap())),
        "shape": shape.toMap(),
        "varieties": List<dynamic>.from(varieties.map((x) => x.toMap())),
      };
}

class CorPokemon {
  final String name;
  final String url;

  CorPokemon({
    this.name,
    this.url,
  });

  factory CorPokemon.fromJson(String str) => CorPokemon.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CorPokemon.fromMap(Map<String, dynamic> json) => CorPokemon(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}

class EvolutionChain {
  final String url;

  EvolutionChain({
    this.url,
  });

  factory EvolutionChain.fromJson(String str) =>
      EvolutionChain.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EvolutionChain.fromMap(Map<String, dynamic> json) => EvolutionChain(
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
      };
}

class FlavorTextEntry {
  final String flavorText;
  final CorPokemon language;
  final CorPokemon version;

  FlavorTextEntry({
    this.flavorText,
    this.language,
    this.version,
  });

  factory FlavorTextEntry.fromJson(String str) =>
      FlavorTextEntry.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FlavorTextEntry.fromMap(Map<String, dynamic> json) => FlavorTextEntry(
        flavorText: json["flavor_text"],
        language: CorPokemon.fromMap(json["language"]),
        version: CorPokemon.fromMap(json["version"]),
      );

  Map<String, dynamic> toMap() => {
        "flavor_text": flavorText,
        "language": language.toMap(),
        "version": version.toMap(),
      };
}

class Genus {
  final String genus;
  final CorPokemon language;

  Genus({
    this.genus,
    this.language,
  });

  factory Genus.fromJson(String str) => Genus.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Genus.fromMap(Map<String, dynamic> json) => Genus(
        genus: json["genus"],
        language: CorPokemon.fromMap(json["language"]),
      );

  Map<String, dynamic> toMap() => {
        "genus": genus,
        "language": language.toMap(),
      };
}

class Name {
  final CorPokemon language;
  final String name;

  Name({
    this.language,
    this.name,
  });

  factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        language: CorPokemon.fromMap(json["language"]),
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "language": language.toMap(),
        "name": name,
      };
}

class PalParkEncounter {
  final CorPokemon area;
  final int baseScore;
  final int rate;

  PalParkEncounter({
    this.area,
    this.baseScore,
    this.rate,
  });

  factory PalParkEncounter.fromJson(String str) =>
      PalParkEncounter.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PalParkEncounter.fromMap(Map<String, dynamic> json) =>
      PalParkEncounter(
        area: CorPokemon.fromMap(json["area"]),
        baseScore: json["base_score"],
        rate: json["rate"],
      );

  Map<String, dynamic> toMap() => {
        "area": area.toMap(),
        "base_score": baseScore,
        "rate": rate,
      };
}

class PokedexNumber {
  final int entryNumber;
  final CorPokemon pokedex;

  PokedexNumber({
    this.entryNumber,
    this.pokedex,
  });

  factory PokedexNumber.fromJson(String str) =>
      PokedexNumber.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokedexNumber.fromMap(Map<String, dynamic> json) => PokedexNumber(
        entryNumber: json["entry_number"],
        pokedex: CorPokemon.fromMap(json["pokedex"]),
      );

  Map<String, dynamic> toMap() => {
        "entry_number": entryNumber,
        "pokedex": pokedex.toMap(),
      };
}

class Variety {
  final bool isDefault;
  final CorPokemon pokemon;

  Variety({
    this.isDefault,
    this.pokemon,
  });

  factory Variety.fromJson(String str) => Variety.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Variety.fromMap(Map<String, dynamic> json) => Variety(
        isDefault: json["is_default"],
        pokemon: CorPokemon.fromMap(json["pokemon"]),
      );

  Map<String, dynamic> toMap() => {
        "is_default": isDefault,
        "pokemon": pokemon.toMap(),
      };
}
