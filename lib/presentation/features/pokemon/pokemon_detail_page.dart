import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/presentation/themes/themes.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';
import 'package:pokedex/utilities/share/share.dart';
import 'package:screenshot/screenshot.dart';

class PokemonDetailPage extends StatefulWidget {
  const PokemonDetailPage({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final PokemonEntity entity;

  @override
  State<PokemonDetailPage> createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  ScreenshotController screenshotController = ScreenshotController();
  final PokeShare pokeShare = PokeShare();

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.entity.name,
            style: PokeTypography.headline1().copyWith(fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Center(
                  child: Image.network(
                    widget.entity.image,
                    scale: 0.5,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Weight:    ',
                    style: PokeTypography.headline1(color: PokeColor.black100)
                        .copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                        text: '${widget.entity.weight}',
                        style:
                            PokeTypography.headline2().copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    text: 'Height:    ',
                    style: PokeTypography.headline1(color: PokeColor.black100)
                        .copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                        text: '${widget.entity.height}',
                        style:
                            PokeTypography.headline2().copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Type:',
                  style: PokeTypography.headline1().copyWith(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Wrap(
                  children: [
                    for (final type in widget.entity.types)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        margin: const EdgeInsets.only(right: 6, bottom: 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: PokeColor.blue500,
                        ),
                        child: Text(type),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                PokeButton(
                  text: 'Share to Whatsapp',
                  textStyle: PokeTypography.body1(color: PokeColor.white),
                  color: PokeColor.yellow50,
                  onPressed: _handleOnPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleOnPressed() async {
    try {
      final res = await screenshotController.capture();
      if (res == null) {
        throw 'empty';
      }

      pokeShare.shareWhatsapp(data: res);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: PokeColor.red50,
        content: Text(e == 'whatsapp_not_installed'
            ? 'Whatsapp is not installed'
            : 'Failed to screenshot, Please try again later!'),
      ));
    }
  }
}
