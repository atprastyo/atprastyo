import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    Key? key,
    this.child,
    this.padding,
    this.top = true,
    this.full = false,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets? padding;
  final bool top;
  final bool full;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: full
            ? BorderRadius.circular(8)
            : BorderRadius.vertical(
                top: top ? const Radius.circular(8) : Radius.zero,
                bottom: top ? Radius.zero : const Radius.circular(8),
              ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 4),
            blurRadius: 8,
          )
        ],
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.fromLTRB(10, 10, 10, top ? 0 : 10),
        child: child,
      ),
    );
  }
}
