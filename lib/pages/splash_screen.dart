import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _introController;
  late AnimationController _ecgController;

  late Animation<double> _heartOutlineAnimation;
  late Animation<double> _heartFillAnimation;
  late Animation<double> _handsAnimation;
  late Animation<double> _scaleDownAnimation;
  late Animation<double> _shiftLogoAnimation;
  late Animation<double> _titleSlideAnimation;
  late Animation<double> _titleFadeAnimation;
  late Animation<double> _sloganFadeAnimation;

  @override
  void initState() {
    super.initState();

    _introController = AnimationController(
      duration: const Duration(milliseconds: 3800),
      vsync: this,
    );

    _ecgController = AnimationController(
      duration: const Duration(milliseconds: 1800),
      vsync: this,
    );

    // 1. Heart outline drawing (0.0 - 0.25)
    _heartOutlineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.0, 0.25, curve: Curves.easeInOut),
      ),
    );

    // 2. Heart fill (0.25 - 0.40)
    _heartFillAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.25, 0.40, curve: Curves.easeIn),
      ),
    );

    // 3. Hands sliding in (0.35 - 0.55)
    _handsAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.35, 0.55, curve: Curves.easeOutBack),
      ),
    );

    // 4. Scale down and Shift Logo (0.60 - 0.80)
    _scaleDownAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.60, 0.80, curve: Curves.easeInOutCubic),
      ),
    );
    _shiftLogoAnimation = Tween<double>(begin: 0.0, end: -100.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.60, 0.80, curve: Curves.easeInOutCubic),
      ),
    );

    // 5. Title Slide & Fade (0.70 - 0.85)
    _titleSlideAnimation = Tween<double>(begin: 50.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.70, 0.85, curve: Curves.easeOutCubic),
      ),
    );
    _titleFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.70, 0.85, curve: Curves.easeIn),
      ),
    );

    // 6. Slogan Fade (0.85 - 1.00)
    _sloganFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _introController,
        curve: const Interval(0.85, 1.0, curve: Curves.easeIn),
      ),
    );

    _introController.forward();

    // Start ECG after the hands are showing
    Future.delayed(const Duration(milliseconds: 1800), () {
      if (mounted) {
        _ecgController.repeat();
      }
    });

    // Navigate to Home after sequence completes
    Future.delayed(const Duration(milliseconds: 5500), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      }
    });
  }

  @override
  void dispose() {
    _introController.dispose();
    _ecgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: Listenable.merge([_introController, _ecgController]),
        builder: (context, child) {
          return Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Text Group (Title and Slogan)
                Transform.translate(
                  offset: const Offset(
                    40.0,
                    0.0,
                  ), // Base alignment center right
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Invisible spacer to offset text from shifted logo
                      const SizedBox(width: 60.0),
                      Transform.translate(
                        offset: Offset(_titleSlideAnimation.value, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: _titleFadeAnimation.value,
                              child: const Text(
                                'CareTag',
                                style: TextStyle(
                                  fontSize: 42.0,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF1E3A5F),
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6.0),
                            Opacity(
                              opacity: _sloganFadeAnimation.value,
                              child: Text(
                                'Your Health, Our Priority',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(
                                    0xFF1E3A5F,
                                  ).withValues(alpha: 0.7),
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Logo Animation Group
                Transform.translate(
                  offset: Offset(_shiftLogoAnimation.value, 0.0),
                  child: Transform.scale(
                    scale: _scaleDownAnimation.value,
                    child: SizedBox(
                      width: 280.0,
                      height: 280.0,
                      child: CustomPaint(
                        painter: CareTagLogoPainter(
                          heartOutlineProgress: _heartOutlineAnimation.value,
                          heartFillProgress: _heartFillAnimation.value,
                          handsProgress: _handsAnimation.value,
                          ecgProgress: _ecgController.value,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CareTagLogoPainter extends CustomPainter {
  final double heartOutlineProgress;
  final double heartFillProgress;
  final double handsProgress;
  final double ecgProgress;

  CareTagLogoPainter({
    required this.heartOutlineProgress,
    required this.heartFillProgress,
    required this.handsProgress,
    required this.ecgProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // 1. Hands (background layer)
    if (handsProgress > 0) {
      _drawHands(canvas, center, handsProgress >= 1.0 ? 1.0 : handsProgress);
    }

    // 2. Heart Fill (base layer)
    if (heartFillProgress > 0) {
      _drawHeartFill(canvas, center, heartFillProgress);
    }

    // 3. Heart Outline (top layer)
    if (heartOutlineProgress > 0) {
      _drawHeartOutline(canvas, center, heartOutlineProgress);
    }

    // 4. Continuous ECG (top-most layer)
    if (ecgProgress > 0) {
      _drawECGLine(canvas, center, ecgProgress);
    }
  }

  void _drawHeartOutline(Canvas canvas, Offset center, double progress) {
    final paint = Paint()
      ..color = const Color(0xFF1E3A5F)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0
      ..strokeCap = StrokeCap.round;

    final path = _createHeartPath(center, 60);
    final pathMetrics = path.computeMetrics().first;
    final extractPath = pathMetrics.extractPath(
      0.0,
      pathMetrics.length * progress,
    );

    canvas.drawPath(extractPath, paint);
  }

  void _drawHeartFill(Canvas canvas, Offset center, double progress) {
    final paint = Paint()
      ..color = Color.lerp(Colors.white, const Color(0xFF1E3A5F), progress)!
      ..style = PaintingStyle.fill;

    final path = _createHeartPath(center, 60);
    canvas.drawPath(path, paint);
  }

  void _drawHands(Canvas canvas, Offset center, double progress) {
    final paint = Paint()
      ..color =
          const Color(0xFFD4A574) // Skin tone
      ..style = PaintingStyle.fill;

    final x = center.dx;
    final y = center.dy;

    // Left hand
    final leftOffset = -80 * (1 - progress);
    final leftHand = Path();
    leftHand.moveTo(x - 70 + leftOffset, y + 40);
    leftHand.lineTo(x - 65 + leftOffset, y - 20);
    leftHand.cubicTo(
      x - 60 + leftOffset,
      y - 25,
      x - 50 + leftOffset,
      y - 20,
      x - 45 + leftOffset,
      y - 10,
    );
    leftHand.cubicTo(
      x - 40 + leftOffset,
      y,
      x - 42 + leftOffset,
      y + 10,
      x - 48 + leftOffset,
      y + 15,
    );
    leftHand.lineTo(x - 60 + leftOffset, y + 45);
    leftHand.close();
    canvas.drawPath(leftHand, paint);

    // Right hand
    final rightOffset = -80 * (1 - progress);
    final rightHand = Path();
    rightHand.moveTo(x + 70 - rightOffset, y + 40);
    rightHand.lineTo(x + 65 - rightOffset, y - 20);
    rightHand.cubicTo(
      x + 60 - rightOffset,
      y - 25,
      x + 50 - rightOffset,
      y - 20,
      x + 45 - rightOffset,
      y - 10,
    );
    rightHand.cubicTo(
      x + 40 - rightOffset,
      y,
      x + 42 - rightOffset,
      y + 10,
      x + 48 - rightOffset,
      y + 15,
    );
    rightHand.lineTo(x + 60 - rightOffset, y + 45);
    rightHand.close();
    canvas.drawPath(rightHand, paint);
  }

  void _drawECGLine(Canvas canvas, Offset center, double progress) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.5
      ..strokeCap = StrokeCap.round;

    final path = Path();
    final startX = center.dx - 45;
    final y = center.dy;

    path.moveTo(startX, y);
    // 1. Flat start
    path.lineTo(startX + 15, y);
    // 2. Small upward dip (P wave)
    path.quadraticBezierTo(startX + 18, y - 5, startX + 22, y);
    // 3. Sharp dip (Q wave)
    path.lineTo(startX + 30, y + 10);
    // 4. Huge spike (R wave)
    path.lineTo(startX + 45, y - 35);
    // 5. Deep spike (S wave)
    path.lineTo(startX + 60, y + 20);
    // 6. Return flat
    path.lineTo(startX + 70, y);
    // 7. Small bump (T wave)
    path.quadraticBezierTo(startX + 78, y - 8, startX + 85, y);
    // 8. Flat end
    path.lineTo(startX + 100, y);

    final pathMetrics = path.computeMetrics().first;
    final length = pathMetrics.length;

    // Moving window effect for continuous trace
    final windowLength = length * 0.45;
    final maxEnd = length * 1.5; // Let it run past the end to disappear
    final currentEnd = maxEnd * progress;
    final currentStart = currentEnd - windowLength;

    final extractPath = pathMetrics.extractPath(
      math.max(0.0, currentStart),
      math.min(length, currentEnd),
    );

    canvas.drawPath(extractPath, paint);
  }

  Path _createHeartPath(Offset center, double size) {
    final path = Path();
    final x = center.dx;
    final y = center.dy;

    path.moveTo(x, y + size * 0.8);

    // Left half
    path.cubicTo(
      x - size * 0.5,
      y + size * 0.5,
      x - size * 1.0,
      y + size * 0.1,
      x - size * 1.0,
      y - size * 0.2,
    );
    path.cubicTo(
      x - size * 1.0,
      y - size * 0.6,
      x - size * 0.5,
      y - size * 0.7,
      x,
      y - size * 0.5,
    );

    // Right half
    path.cubicTo(
      x + size * 0.5,
      y - size * 0.7,
      x + size * 1.0,
      y - size * 0.6,
      x + size * 1.0,
      y - size * 0.2,
    );
    path.cubicTo(
      x + size * 1.0,
      y + size * 0.1,
      x + size * 0.5,
      y + size * 0.5,
      x,
      y + size * 0.8,
    );

    path.close();
    return path;
  }

  @override
  bool shouldRepaint(CareTagLogoPainter oldDelegate) {
    return oldDelegate.heartOutlineProgress != heartOutlineProgress ||
        oldDelegate.heartFillProgress != heartFillProgress ||
        oldDelegate.handsProgress != handsProgress ||
        oldDelegate.ecgProgress != ecgProgress;
  }
}
