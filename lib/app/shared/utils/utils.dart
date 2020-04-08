import 'package:flutter/material.dart';
import 'package:pokedex_modular/app/modules/home/models/pokemon_model.dart';

class Utils {
  static Color getColorType({String type}) {
    if (type == null)
      return Colors.blue;
    else
      switch (type) {
        case 'normal':
          return Colors.brown[400];
          break;
        case 'fire':
          return Colors.red;
          break;
        case 'water':
          return Colors.blue;
          break;
        case 'grass':
          return Colors.green;
          break;
        case 'electric':
          return Colors.amber;
          break;
        case 'ice':
          return Colors.cyanAccent[400];
          break;
        case 'fighting':
          return Colors.orange;
          break;
        case 'poison':
          return Colors.purple;
          break;
        case 'ground':
          return Colors.orange[300];
          break;
        case 'flying':
          return Colors.indigo[200];
          break;
        case 'psychic':
          return Colors.pink;
          break;
        case 'bug':
          return Colors.lightGreen[500];
          break;
        case 'rock':
          return Colors.grey;
          break;
        case 'ghost':
          return Colors.indigo[400];
          break;
        case 'dark':
          return Colors.brown;
          break;
        case 'dragon':
          return Colors.indigo[800];
          break;
        case 'steel':
          return Colors.blueGrey;
          break;
        case 'fairy':
          return Colors.pinkAccent[100];
          break;
        default:
          return Colors.grey;
          break;
      }
  }

  static List<Widget> setTipos({List<Type> types, double fontsize = 12}) {
    List<Widget> lista = [];
    if (types == null) return lista;
    types
      ..sort((a, b) => a.slot.compareTo(b.slot))
      ..forEach((t) {
        lista.add(
          Container(
            margin: EdgeInsets.only(bottom: 5, left: 8),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(80, 255, 255, 255)),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                t.type.name.trim(),
                style: TextStyle(
                    fontFamily: 'PokemonFont',
                    fontSize: fontsize,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        );
      });

    return lista;
  }
}
