class Constants {
  static const whitePokeball = 'assets/images/pokeball.png';
  static const blackPokeball = 'assets/images/pokeball_dark.png';
  static const apiUrl = 'https://pokeapi.co/api/v2/';
  static pokeImgUrl(String num) =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${num.padLeft(3, '0')}.png';
}
