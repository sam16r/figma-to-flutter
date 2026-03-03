import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'caretag_scan_success_page.dart';

class CareTagScanningPage extends StatefulWidget {
  const CareTagScanningPage({super.key});

  @override
  State<CareTagScanningPage> createState() => _CareTagScanningPageState();
}

class _CareTagScanningPageState extends State<CareTagScanningPage>
    with TickerProviderStateMixin {
  late AnimationController _rippleController;
  late AnimationController _phoneController;
  late Animation<double> _phoneAnimation;
  Timer? _scanTimer;

  @override
  void initState() {
    super.initState();

    // Ripple rings animation — loops continuously
    _rippleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat();

    // Phone icon gentle float animation
    _phoneController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);

    _phoneAnimation = Tween<double>(begin: -6, end: 6).animate(
      CurvedAnimation(parent: _phoneController, curve: Curves.easeInOut),
    );

    // After 3 seconds simulate scan complete
    _scanTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (ctx, anim, secondaryAnim) =>
                const CareTagScanSuccessPage(),
            transitionsBuilder: (ctx, anim, secondaryAnim, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: const Duration(milliseconds: 400),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _rippleController.dispose();
    _phoneController.dispose();
    _scanTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Blurred background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(color: Colors.black.withValues(alpha: 0.55)),
          ),

          // Main content
          SafeArea(
            child: Column(
              children: [
                const Spacer(),

                // CT Icon with ripple rings
                SizedBox(
                  width: 280,
                  height: 280,
                  child: AnimatedBuilder(
                    animation: _rippleController,
                    builder: (context, child) {
                      return CustomPaint(
                        painter: _RipplePainter(_rippleController.value),
                        child: child,
                      );
                    },
                    child: Center(
                      child: Container(
                        width: 104,
                        height: 104,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0D1117),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(
                              0xFF3B82F6,
                            ).withValues(alpha: 0.7),
                            width: 2.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFF3B82F6,
                              ).withValues(alpha: 0.35),
                              blurRadius: 24,
                              spreadRadius: 4,
                            ),
                          ],
                        ),
                        child: const Center(child: _CTShieldIcon()),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // Ready to Scan text
                const Text(
                  'Ready to Scan',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                // Animated phone icon
                AnimatedBuilder(
                  animation: _phoneAnimation,
                  builder: (context, child) => Transform.translate(
                    offset: Offset(0, _phoneAnimation.value),
                    child: child,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      const Icon(
                        Icons.smartphone_outlined,
                        color: Colors.white70,
                        size: 48,
                      ),
                      Positioned(
                        top: 0,
                        child: Icon(
                          Icons.wifi,
                          color: const Color(0xFF3B82F6).withValues(alpha: 0.9),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Hold the top of your phone near the\nclinic terminal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),

                const Spacer(),

                // Cancel button
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        _scanTimer?.cancel();
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.white.withValues(alpha: 0.4),
                          width: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// CT Shield icon drawn with CustomPainter
class _CTShieldIcon extends StatelessWidget {
  const _CTShieldIcon();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: CustomPaint(painter: _ShieldPainter()),
    );
  }
}

class _ShieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // Shield background gradient
    final shieldPath = Path()
      ..moveTo(w * 0.5, h * 0.04)
      ..lineTo(w * 0.95, h * 0.22)
      ..lineTo(w * 0.95, h * 0.6)
      ..quadraticBezierTo(w * 0.95, h * 0.88, w * 0.5, h * 0.98)
      ..quadraticBezierTo(w * 0.05, h * 0.88, w * 0.05, h * 0.6)
      ..lineTo(w * 0.05, h * 0.22)
      ..close();

    final shieldPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [const Color(0xFF60A5FA), const Color(0xFF2563EB)],
      ).createShader(Rect.fromLTWH(0, 0, w, h));

    canvas.drawPath(shieldPath, shieldPaint);

    // "CT" text
    final textPainter = TextPainter(
      text: const TextSpan(
        text: 'CT',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 1,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textPainter.paint(
      canvas,
      Offset((w - textPainter.width) / 2, (h - textPainter.height) / 2 + 2),
    );
  }

  @override
  bool shouldRepaint(_ShieldPainter oldDelegate) => false;
}

// Ripple rings CustomPainter
class _RipplePainter extends CustomPainter {
  final double progress;

  _RipplePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const maxRadius = 130.0;
    const ringCount = 4;

    for (int i = 0; i < ringCount; i++) {
      final delay = i / ringCount;
      final rippleProgress = (progress + delay) % 1.0;
      final radius = rippleProgress * maxRadius;
      final opacity = (1.0 - rippleProgress) * 0.45;

      if (opacity <= 0) continue;

      final paint = Paint()
        ..color = const Color(0xFF3B82F6).withValues(alpha: opacity)
        ..style = PaintingStyle.stroke
        ..strokeWidth = math.max(1.0, 2.5 * (1.0 - rippleProgress));

      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(_RipplePainter oldDelegate) =>
      oldDelegate.progress != progress;
}
