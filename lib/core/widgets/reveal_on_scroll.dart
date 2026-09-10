// core/widgets/reveal_on_scroll.dart
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// يلف أي section: أول ما يظهر ٢٠٪ منه بالشاشة أثناء السكرول،
/// بيعمل fade-in + صعود بسيط لمرة وحدة بس (ما بيتكرر لما ترجع تطلع/تنزل).
class RevealOnScroll extends StatefulWidget {
  final Widget child;
  final int index; // ترتيب القسم، لتأخير بسيط تصاعدي اختياري
  const RevealOnScroll({super.key, required this.child, this.index = 0});

  @override
  State<RevealOnScroll> createState() => _RevealOnScrollState();
}

class _RevealOnScrollState extends State<RevealOnScroll> with SingleTickerProviderStateMixin {
  bool _shown = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('reveal_${widget.index}_${widget.child.hashCode}'),
      onVisibilityChanged: (VisibilityInfo info) {   // ← بدل onVisibilityInfo
        if (!_shown && info.visibleFraction > 0.2) {
          setState(() => _shown = true);
        }
      },
      child: AnimatedOpacity(
        opacity: _shown ? 1 : 0,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOut,
        child: AnimatedSlide(
          offset: _shown ? Offset.zero : const Offset(0, 0.06),
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeOut,
          child: widget.child,
        ),
      ),
    );
  }
}