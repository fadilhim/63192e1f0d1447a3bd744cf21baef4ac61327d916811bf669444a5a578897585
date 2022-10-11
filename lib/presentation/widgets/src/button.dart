import 'package:flutter/material.dart';

class PokeButton extends StatelessWidget {
  const PokeButton({
    Key? key,
    required this.text,
    required this.textStyle,
    this.height = 50,
    this.padding = 12,
    this.onPressed,
    this.leadingIcon,
    this.color,
    this.borderColor,
  }) : super(key: key);

  final String text;

  final double height;

  final double padding;

  final TextStyle textStyle;

  final VoidCallback? onPressed;

  final Widget? leadingIcon;

  final Color? color;

  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: height,
      ),
      child: ButtonTheme(
        height: height,
        buttonColor: color,
        minWidth: double.infinity,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 100),
          child: TextButton.icon(
            style: TextButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            icon: leadingIcon ?? const SizedBox(),
            label: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
