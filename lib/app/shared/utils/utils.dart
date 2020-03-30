import 'package:flutter/material.dart';

class Utils {
  static Color getColorType({String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
        break;
      case 'Fire':
        return Colors.red;
        break;
      case 'Water':
        return Colors.blue;
        break;
      case 'Grass':
        return Colors.green;
        break;
      case 'Electric':
        return Colors.amber;
        break;
      case 'Ice':
        return Colors.cyanAccent[400];
        break;
      case 'Fighting':
        return Colors.orange;
        break;
      case 'Poison':
        return Colors.purple;
        break;
      case 'Ground':
        return Colors.orange[300];
        break;
      case 'Flying':
        return Colors.indigo[200];
        break;
      case 'Psychic':
        return Colors.pink;
        break;
      case 'Bug':
        return Colors.lightGreen[500];
        break;
      case 'Rock':
        return Colors.grey;
        break;
      case 'Ghost':
        return Colors.indigo[400];
        break;
      case 'Dark':
        return Colors.brown;
        break;
      case 'Dragon':
        return Colors.indigo[800];
        break;
      case 'Steel':
        return Colors.blueGrey;
        break;
      case 'Fairy':
        return Colors.pinkAccent[100];
        break;
      default:
        return Colors.grey;
        break;
    }
  }

  static List<Widget> setTipos({List<String> types, double fontsize = 12}) {
    List<Widget> lista = [];
    types.forEach((nome) {
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
              nome.trim(),
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
