// To parse this JSON data, do
//
//     final listPokemonModel = listPokemonModelFromJson(jsonString);

import 'dart:convert';

ListPokemonModel listPokemonModelFromJson(String str) =>
    ListPokemonModel.fromJson(json.decode(str));

String listPokemonModelToJson(ListPokemonModel data) =>
    json.encode(data.toJson());

class ListPokemonModel {
  int count;
  String next;
  String previous;
  List<ResultPokemon> results;

  ListPokemonModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory ListPokemonModel.fromJson(Map<String, dynamic> json) =>
      ListPokemonModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<ResultPokemon>.from(json["results"].map((x) => ResultPokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class ResultPokemon {
  String name;
  String url;

  ResultPokemon({
    this.name,
    this.url,
  });

  factory ResultPokemon.fromJson(Map<String, dynamic> json) => ResultPokemon(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
