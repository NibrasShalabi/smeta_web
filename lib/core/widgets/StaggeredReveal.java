// core/widgets/staggered_reveal.dart
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// يطلع كل عنصر بالقائمة بالتتابع (fade + صعود)، بفارق بسيط بينهم -
/// بدل ما يظهروا كلهم دفعة وحدة متل RevealOnScroll.
class StaggeredReveal extends StatefulWidget {
  final List<Widget> children;
  final CrossAxisAlignment alignment;
  const StaggeredReveal({super.key, required this.children, this.alignment = CrossAxisAlignment.start});

  @override
  State<StaggeredReveal> createState() => _StaggeredRevealState();
}

class _StaggeredRevealState extends State<StaggeredReveal> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    vsync: this, duration: Duration(milliseconds: 400 + widget.children.length * 130));
  bool _started = false;

  @override
  void dispose() { _controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('stagger_${widget.hashCode}'),
      onVisibilityChanged: (info) {
        if (!_started && info.visibleFraction > 0.2) {
          _started = true;
          _controller.forward();
        }
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) => Column(
          crossAxisAlignment: widget.alignment,
          children: [
            for (int i = 0; i < widget.children.length; i++)
              _item(i, widget.children[i]),
          ],
        ),
      ),
    );
  }

  Widget _item(int i, Widget child) {
    final start = i / widget.children.length;
    final end = ((i + 1) / widget.children.length).clamp(0.0, 1.0);
    final t = Interval(start, end, curve: Curves.easeOut).transform(_controller.value);
    return Opacity(opacity: t, child: Transform.translate(offset: Offset(0, (1 - t) * 18), child: child));
  }
}