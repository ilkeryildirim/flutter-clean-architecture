import 'package:flutter/material.dart';

// Core colors veya config yapısını dışarıdan geçmeliyiz, doğrudan bağımlılığı kaldırıyoruz.
class AppContainer extends StatelessWidget {
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? color;
  final Widget? child;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow; // Gölge kontrolünü dışarıya taşıdık
  final BoxConstraints?
      constraints; // Gerektiğinde ekstra constraint'ler verebilmek için

  const AppContainer({
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.color,
    this.height,
    this.child,
    this.boxShadow,
    this.constraints, // Kapsayıcı constraint'leri opsiyonel olarak geçiyoruz
    this.width = 100,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      constraints: constraints ??
          BoxConstraints(
            minHeight: 0.0,
            maxHeight: height ?? double.infinity,
          ),
      decoration: BoxDecoration(
        boxShadow: boxShadow, // Gölgeyi dışarıdan alıyoruz
        color: color,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0,
        ),
      ),
      child: child,
    );
  }
}
