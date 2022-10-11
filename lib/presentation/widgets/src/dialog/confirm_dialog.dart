import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/themes/themes.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';

class PokeConfirmDialog extends StatefulWidget {
  const PokeConfirmDialog._({
    required this.title,
    required this.message,
    this.onConfirm,
    this.onCancel,
  });

  /// The title to display in the dialog.
  final String title;

  /// The message to display in the dialog.
  final String message;

  /// Called when the confirm button is tapped.
  final VoidCallback? onConfirm;

  /// Called when the cancel button is tapped.
  final VoidCallback? onCancel;

  static Future<bool?> showDialog(
    BuildContext context, {
    required String title,
    required String message,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showModal<bool>(
      context: context,
      configuration:
          const FadeScaleTransitionConfiguration(barrierDismissible: false),
      builder: (context) => PokeConfirmDialog._(
        title: title,
        message: message,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }

  @override
  State<PokeConfirmDialog> createState() => _PokeSimpleDialogState();
}

class _PokeSimpleDialogState extends State<PokeConfirmDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 350.0,
        ),
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: PokeColor.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: PokeTypography.headline2(
                color: PokeColor.black100,
              ),
            ),
            const SizedBox(height: 12.0),
            Text(
              widget.message,
              textAlign: TextAlign.center,
              style: PokeTypography.body2(
                color: PokeColor.black100,
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: PokeButton(
                    padding: 12,
                    height: 38,
                    borderColor: PokeColor.black20,
                    textStyle: PokeTypography.body2(
                      color: PokeColor.white,
                    ),
                    color: PokeColor.red50,
                    text: 'Back',
                    onPressed: () {
                      widget.onCancel?.call();
                      AutoRouter.of(context).pop(false);
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: PokeButton(
                    padding: 12,
                    height: 38,
                    color: PokeColor.blue500,
                    textStyle: PokeTypography.body2(color: PokeColor.white),
                    text: 'Yes, sure',
                    onPressed: () {
                      widget.onConfirm?.call();
                      AutoRouter.of(context).pop(true);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
