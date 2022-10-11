import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pokedex/domain/entities/entities.dart';

@lazySingleton
class PokePdf {
  void savePdf(List<PokemonEntity> pokemons) async {
    try {
      final pdf = pw.Document();

      for (var i = 0; i < (pokemons.length / 5); i++) {
        pdf.addPage(
          pw.Page(
            build: (pw.Context context) => pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                for (var j = 0; j < 5; j++) _pokemonCard(pokemons[(5 * i) + j]),
              ],
            ),
          ),
        );
      }

      final directoryPath = (await getApplicationDocumentsDirectory()).path;
      final file =
          File('$directoryPath/${DateTime.now().toIso8601String()}.pdf');
      final res = await file.writeAsBytes(await pdf.save());

      OpenFile.open(res.path);
    } catch (e) {
      rethrow;
    }
  }

  pw.Widget _pokemonCard(PokemonEntity pokemon) => pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text('Id: ${pokemon.id}'),
          pw.Text('Name: ${pokemon.name}'),
          pw.Text('Height: ${pokemon.height}'),
          pw.Text('Weight: ${pokemon.weight}'),
          pw.Text('Types: ${pokemon.types}'),
          pw.Text('Image url: ${pokemon.image}'),
          pw.Text('\n'),
        ],
      );
}
