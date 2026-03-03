import 'dart:math' as math;

import 'package:flutter/material.dart';

class CareTagScanSuccessPage extends StatefulWidget {
  const CareTagScanSuccessPage({super.key});

  @override
  State<CareTagScanSuccessPage> createState() => _CareTagScanSuccessPageState();
}

class _CareTagScanSuccessPageState extends State<CareTagScanSuccessPage>
    with TickerProviderStateMixin {
  late AnimationController _checkController;
  late AnimationController _confettiController;
  late AnimationController _cardController;

  late Animation<double> _checkScale;
  late Animation<double> _cardSlide;
  late Animation<double> _cardFade;

  @override
  void initState() {
    super.initState();

    // Checkmark bounce
    _checkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _checkScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _checkController, curve: Curves.elasticOut),
    );

    // Confetti dots
    _confettiController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    // Card slide-up
    _cardController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _cardSlide = Tween<double>(begin: 40, end: 0).animate(
      CurvedAnimation(parent: _cardController, curve: Curves.easeOutCubic),
    );
    _cardFade = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _cardController, curve: Curves.easeOut));

    // Stagger animations
    _checkController.forward();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) _confettiController.forward();
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) _cardController.forward();
    });
  }

  @override
  void dispose() {
    _checkController.dispose();
    _confettiController.dispose();
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // Top section — checkmark + confetti
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Checkmark with confetti overlay
                      SizedBox(
                        width: 240,
                        height: 220,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Confetti dots and arcs
                            AnimatedBuilder(
                              animation: _confettiController,
                              builder: (context, child) {
                                return CustomPaint(
                                  size: const Size(240, 220),
                                  painter: _ConfettiPainter(
                                    _confettiController.value,
                                  ),
                                );
                              },
                            ),
                            // Green checkmark circle
                            ScaleTransition(
                              scale: _checkScale,
                              child: Container(
                                width: 108,
                                height: 108,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF22C55E),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(
                                        0xFF22C55E,
                                      ).withValues(alpha: 0.3),
                                      blurRadius: 20,
                                      spreadRadius: 4,
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.check_rounded,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Title
                      const Text(
                        'Scan Successful',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF111827),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Your medical ID has been securely\ntransmitted.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6B7280),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Transfer details card (animated slide-up)
              AnimatedBuilder(
                animation: _cardController,
                builder: (context, child) => Transform.translate(
                  offset: Offset(0, _cardSlide.value),
                  child: Opacity(opacity: _cardFade.value, child: child),
                ),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.07),
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: const Color(0xFFF3F4F6)),
                  ),
                  child: Column(
                    children: [
                      // VERIFIED TRANSFER badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDCFCE7),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color(
                              0xFF22C55E,
                            ).withValues(alpha: 0.3),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.lock_outline,
                              color: Color(0xFF16A34A),
                              size: 14,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'VERIFIED TRANSFER',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF16A34A),
                                letterSpacing: 0.6,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 14),
                      const Divider(height: 1, color: Color(0xFFF3F4F6)),
                      const SizedBox(height: 14),

                      // Data rows
                      _TransferRow(
                        icon: Icons.business_outlined,
                        iconColor: const Color(0xFF3B82F6),
                        iconBg: const Color(0xFFEFF6FF),
                        label: 'DATA SHARED WITH',
                        value: 'City General Hospital',
                      ),
                      const SizedBox(height: 14),
                      _TransferRow(
                        icon: Icons.timer_outlined,
                        iconColor: const Color(0xFFF97316),
                        iconBg: const Color(0xFFFFF7ED),
                        label: 'ACCESS DURATION',
                        value: '24 Hours',
                      ),
                      const SizedBox(height: 14),
                      _TransferRow(
                        icon: Icons.badge_outlined,
                        iconColor: const Color(0xFF8B5CF6),
                        iconBg: const Color(0xFFF5F3FF),
                        label: 'RECORDS INCLUDED',
                        value: 'Emergency Profile, Allergies',
                      ),
                    ],
                  ),
                ),
              ),

              // Back to My Care button
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Back to My Care  →',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Confetti painter ──────────────────────────────────────────────────────────
class _ConfettiPainter extends CustomPainter {
  final double progress;

  _ConfettiPainter(this.progress);

  double _eased(double raw) {
    // elasticOut approximation
    if (raw == 0 || raw == 1) return raw;
    return math.pow(2, -10 * raw).toDouble() *
            math.sin((raw * 10 - 0.75) * (2 * math.pi) / 3) +
        1;
  }

  double _delayed(double delay, double duration) {
    final t = ((progress - delay) / duration).clamp(0.0, 1.0);
    return _eased(t);
  }

  void _dot(
    Canvas canvas,
    Offset pos,
    double radius,
    Color color,
    double scale,
  ) {
    if (scale <= 0) return;
    canvas.drawCircle(pos, radius * scale, Paint()..color = color);
  }

  void _arc(
    Canvas canvas,
    Rect rect,
    double startAngle,
    double sweepAngle,
    Color color,
    double strokeWidth,
    double scale,
  ) {
    if (scale <= 0) return;
    final paint = Paint()
      ..color = color.withValues(alpha: scale.clamp(0.0, 1.0))
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(rect, startAngle, sweepAngle * scale, false, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;

    // Red arc — top right
    _arc(
      canvas,
      Rect.fromCenter(center: Offset(cx + 62, cy - 44), width: 28, height: 28),
      math.pi,
      math.pi,
      const Color(0xFFEF4444),
      3.5,
      _delayed(0.0, 0.5),
    );

    // Orange/yellow dot — right
    _dot(
      canvas,
      Offset(cx + 92, cy - 18),
      6,
      const Color(0xFFF97316),
      _delayed(0.05, 0.5),
    );

    // Yellow arc — bottom right
    _arc(
      canvas,
      Rect.fromCenter(center: Offset(cx + 66, cy + 46), width: 30, height: 22),
      0,
      math.pi,
      const Color(0xFFEAB308),
      3.5,
      _delayed(0.1, 0.5),
    );

    // Blue dot — bottom center-right
    _dot(
      canvas,
      Offset(cx + 20, cy + 72),
      8,
      const Color(0xFF3B82F6),
      _delayed(0.15, 0.5),
    );

    // Green dot — left
    _dot(
      canvas,
      Offset(cx - 72, cy + 30),
      6,
      const Color(0xFF22C55E),
      _delayed(0.2, 0.5),
    );

    // Purple dot — top left
    _dot(
      canvas,
      Offset(cx - 64, cy - 40),
      5,
      const Color(0xFF8B5CF6),
      _delayed(0.25, 0.5),
    );

    // Small teal dot — top center-right
    _dot(
      canvas,
      Offset(cx + 46, cy - 70),
      4,
      const Color(0xFF0D9488),
      _delayed(0.1, 0.4),
    );
  }

  @override
  bool shouldRepaint(_ConfettiPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

// ── Transfer detail row ───────────────────────────────────────────────────────
class _TransferRow extends StatelessWidget {
  const _TransferRow({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF9CA3AF),
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
