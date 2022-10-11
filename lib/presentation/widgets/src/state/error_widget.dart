import 'package:flutter/material.dart';

class PokemonErrorWidget extends StatelessWidget {
  const PokemonErrorWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text ?? 'Something wrong here, Please try again later.',
      ),
    );
  }
}
