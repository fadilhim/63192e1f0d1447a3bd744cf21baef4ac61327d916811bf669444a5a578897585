import 'dart:math' as math show sin, pi;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pokedex/presentation/themes/themes.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    Key? key,
    required this.width,
    required this.height,
  })  : boxDecoration = const BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        super(key: key);

  const ShimmerLoading.circular({
    Key? key,
    this.width = double.infinity,
    required this.height,
  })  : boxDecoration = const ShapeDecoration(
          shape: CircleBorder(),
        ),
        super(key: key);

  final double width;
  final double height;
  final Decoration boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black45,
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: height,
        decoration: boxDecoration,
      ),
    );
  }
}

class PokeLoadingWidget extends StatefulWidget {
  const PokeLoadingWidget({
    Key? key,
    this.duration = const Duration(milliseconds: 2400),
    this.isBlur = true,
    this.text,
  }) : super(key: key);

  final Duration duration;
  final bool isBlur;
  final String? text;

  @override
  State<PokeLoadingWidget> createState() => _SpinKitFadingCubeCustomState();
}

class _SpinKitFadingCubeCustomState extends State<PokeLoadingWidget>
    with TickerProviderStateMixin {
  late AnimationController _opacityController;

  @override
  void initState() {
    super.initState();
    _opacityController =
        AnimationController(vsync: this, duration: widget.duration)..repeat();
  }

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const size = 32.0;
    final child = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox.fromSize(
            size: const Size.square(size),
            child: Center(
              child: Transform.rotate(
                angle: -45.0 * 0.0174533,
                child: Stack(
                  children: [
                    _Cube(
                      index: 1,
                      size: size,
                      opacityController: _opacityController,
                    ),
                    _Cube(
                      index: 2,
                      size: size,
                      opacityController: _opacityController,
                    ),
                    _Cube(
                      index: 3,
                      size: size,
                      opacityController: _opacityController,
                    ),
                    _Cube(
                      index: 4,
                      size: size,
                      opacityController: _opacityController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (widget.text != null) const SizedBox(height: 28),
          if (widget.text != null)
            Text(
              'Please Wait',
              style: PokeTypography.headline2(color: PokeColor.black100),
            ),
        ],
      ),
    );

    if (widget.isBlur) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
        child: child,
      );
    } else {
      return Container(
        color: PokeColor.white,
        child: child,
      );
    }
  }
}

class _Cube extends StatelessWidget {
  const _Cube({
    Key? key,
    required this.index,
    required this.size,
    required this.opacityController,
  }) : super(key: key);

  final int index;
  final double size;
  final AnimationController opacityController;

  @override
  Widget build(BuildContext context) {
    final size = this.size / 2;
    final position = this.size / 2;

    return Positioned.fill(
      top: position,
      left: position,
      child: Transform.scale(
        scale: 1.1,
        origin: Offset(-size * 0.5, -size * 0.5),
        child: Transform(
          transform: Matrix4.rotationZ(90.0 * (index - 1) * 0.0174533),
          child: Align(
            alignment: Alignment.center,
            child: FadeTransition(
              opacity:
                  DelayTween(begin: 0.0, end: 1.0, delay: 0.3 * (index - 1))
                      .animate(opacityController),
              child: SizedBox.fromSize(
                size: Size.square(size),
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: PokeColor.blue500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DelayTween extends Tween<double> {
  DelayTween({
    required double begin,
    required double end,
    required this.delay,
  }) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) {
    return super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);
  }

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
