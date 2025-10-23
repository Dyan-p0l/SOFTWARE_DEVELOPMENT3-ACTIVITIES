import 'package:flutter/material.dart';

class floatingScrollHint extends StatefulWidget {
  const floatingScrollHint({super.key});

  @override
  State<floatingScrollHint> createState() => _floatingScrollHintState();
}

class _floatingScrollHintState extends State<floatingScrollHint>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Scroll Down",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 32),
        ],
      ),
    );
  }
}
