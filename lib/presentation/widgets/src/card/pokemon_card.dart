import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/presentation/themes/themes.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';

class PokemonCard extends StatelessWidget {
  /// Creates a pokemon card.
  ///
  /// The [onTap] is optional.
  ///
  /// While [entity] must not be null.
  const PokemonCard({
    Key? key,
    this.onTap,
    this.onDeleteTap,
    required this.entity,
    this.isDeleteEnabled = false,
  }) : super(key: key);

  /// Data to display on card.
  final PokemonEntity entity;

  /// Called when the card is tapped.
  final Function()? onTap;

  /// Called when the delete button is tapped.
  final Function()? onDeleteTap;

  final bool isDeleteEnabled;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 2,
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Image.network(
                entity.image,
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '#${entity.id}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        isDeleteEnabled
                            ? IconButton(
                                onPressed: onDeleteTap,
                                icon: const Icon(Icons.delete),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(entity.name),
                    const SizedBox(height: 4),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        for (final type in entity.types)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 4,
                            ),
                            margin: const EdgeInsets.only(right: 6, bottom: 4),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: PokeColor.blue500,
                            ),
                            child: Text(type),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonLoadingCard extends StatelessWidget {
  /// Creates a pokemon loading card.
  const PokemonLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 2,
      ),
      child: Row(
        children: [
          const ShimmerLoading(
            height: 50,
            width: 50,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerLoading(
                  height: 12,
                  width: 200,
                ),
                SizedBox(height: 4),
                ShimmerLoading(
                  height: 12,
                  width: 40,
                ),
                SizedBox(height: 4),
                ShimmerLoading(
                  height: 12,
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
