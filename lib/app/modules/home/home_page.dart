import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_modular/app/modules/home/components/body/body_widget.dart';
import 'components/header/header_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    controller.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HeaderWidget(
            screenWidth: MediaQuery.of(context).size.width,
            top: MediaQuery.of(context).padding.top - (240 / 2.9),
          ),
          Observer(builder: (_) {
            if (controller.listPokemon == null || controller.loading)
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Center(
                  child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                ),
              );
            return FutureBuilder(
                future: controller.listPokemon,
                builder: (context, snapshot) {
                  return BodyWidget(
                    pokemon: snapshot.data,
                    pokemons: controller.infoPokemon,
                  );
                });
          })
        ],
      ),
    );
  }
}
