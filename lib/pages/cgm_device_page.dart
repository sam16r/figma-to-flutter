import 'package:flutter/material.dart';

class CgmDevicePage extends StatelessWidget {
  const CgmDevicePage({super.key});

  static const routeName = '/cgm-device';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 220,
                  pinned: true,
                  backgroundColor: const Color(0xFF1E293B),
                  leading: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(Icons.share, color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?w=800&auto=format&fit=crop',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                              Container(color: const Color(0xFF1E293B)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  _FdaClearedPill(),
                                  SizedBox(width: 6),
                                  _CaretagCompatiblePill(),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                'Continuous Glucose Monitor',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                'Next-gen metabolic tracking',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 3 stat boxes
                        Row(
                          children: [
                            Expanded(
                              child: _StatBox(
                                label: 'FINGER PRICKS',
                                value: 'Zero',
                                valueColor: const Color(0xFF3B82F6),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _StatBox(
                                label: 'SENSOR LIFE',
                                value: '14 Days',
                                valueColor: const Color(0xFF22C55E),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _StatBox(
                                label: 'SYNC',
                                value: 'Instant',
                                valueColor: const Color(0xFF8B5CF6),
                                icon: Icons.bluetooth,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // Live Integration header
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Live Integration',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                            const Text(
                              'CareTag App Preview',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3B82F6),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Glucose chart card
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF0F172A),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Current Glucose',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white54,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            '108',
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          const Padding(
                                            padding: EdgeInsets.only(bottom: 6),
                                            child: Text(
                                              'mg/dL',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white60,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF166534),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      '→ Stable',
                                      style: TextStyle(
                                        color: Color(0xFF4ADE80),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'High Limit',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white38,
                                ),
                              ),
                              const SizedBox(height: 8),
                              // Chart wave
                              SizedBox(
                                height: 60,
                                child: CustomPaint(
                                  painter: _GlucoseChartPainter(),
                                  size: const Size(double.infinity, 60),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Low Limit',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white38,
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Divider(color: Colors.white12, height: 1),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Avg Glucose',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white38,
                                          ),
                                        ),
                                        Text(
                                          '112 mg/dL',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Time in Range',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white38,
                                          ),
                                        ),
                                        Text(
                                          '94%',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF4ADE80),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 6),
                        const Text(
                          'Screen simulation. Actual app interface may vary.',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),

                        const SizedBox(height: 24),

                        const Text(
                          'Key Benefits',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const _BenefitRow(
                          icon: Icons.notifications_outlined,
                          iconColor: Color(0xFF3B82F6),
                          title: 'Real-time Alerts',
                          desc:
                              'Receive immediate notifications on your phone or watch if your glucose levels spike or drop dangerously low.',
                        ),
                        const SizedBox(height: 14),
                        const _BenefitRow(
                          icon: Icons.restaurant_outlined,
                          iconColor: Color(0xFF22C55E),
                          title: 'Dietary Correlation Analysis',
                          desc:
                              'Log your meals and see exactly how different foods impact your metabolic health within minutes.',
                        ),
                        const SizedBox(height: 14),
                        const _BenefitRow(
                          icon: Icons.auto_graph_outlined,
                          iconColor: Color(0xFF8B5CF6),
                          title: 'AI-Powered Insights',
                          desc:
                              'CareTag\'s AI analyzes your patterns to suggest optimal meal times and exercise windows.',
                        ),

                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Sticky bottom bar
          Container(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFFE5E7EB))),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Monthly Subscription',
                      style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
                    ),
                    const Spacer(),
                    Row(
                      children: List.generate(
                        3,
                        (i) => Container(
                          width: 22,
                          height: 22,
                          margin: EdgeInsets.only(left: i == 0 ? 0 : -6.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: [
                              const Color(0xFF6366F1),
                              const Color(0xFF0D9488),
                              const Color(0xFFEF4444),
                            ][i],
                            border: Border.all(color: Colors.white, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '\$89',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                        '/mo',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Check Eligibility for CGM →',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
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

class _FdaClearedPill extends StatelessWidget {
  const _FdaClearedPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF0D9488),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'FDA CLEARED',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _CaretagCompatiblePill extends StatelessWidget {
  const _CaretagCompatiblePill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'CARETAG COMPATIBLE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  const _StatBox({
    required this.label,
    required this.value,
    required this.valueColor,
    this.icon,
  });
  final String label;
  final String value;
  final Color valueColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          if (icon != null) ...[
            Icon(icon, color: valueColor, size: 18),
            const SizedBox(height: 4),
          ],
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              color: Color(0xFF9CA3AF),
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _BenefitRow extends StatelessWidget {
  const _BenefitRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.desc,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 22),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                desc,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF6B7280),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GlucoseChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF3B82F6)
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fillPaint = Paint()
      ..shader = LinearGradient(
        colors: [
          const Color(0xFF3B82F6).withValues(alpha: 0.3),
          Colors.transparent,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    // Smooth wave path
    final path = Path();
    final fillPath = Path();

    final points = [
      Offset(0, size.height * 0.5),
      Offset(size.width * 0.15, size.height * 0.35),
      Offset(size.width * 0.30, size.height * 0.4),
      Offset(size.width * 0.45, size.height * 0.55),
      Offset(size.width * 0.60, size.height * 0.45),
      Offset(size.width * 0.75, size.height * 0.3),
      Offset(size.width * 0.88, size.height * 0.35),
      Offset(size.width, size.height * 0.28),
    ];

    path.moveTo(points[0].dx, points[0].dy);
    fillPath.moveTo(points[0].dx, size.height);
    fillPath.lineTo(points[0].dx, points[0].dy);

    for (int i = 0; i < points.length - 1; i++) {
      final mid = Offset(
        (points[i].dx + points[i + 1].dx) / 2,
        (points[i].dy + points[i + 1].dy) / 2,
      );
      path.quadraticBezierTo(points[i].dx, points[i].dy, mid.dx, mid.dy);
      fillPath.quadraticBezierTo(points[i].dx, points[i].dy, mid.dx, mid.dy);
    }
    path.lineTo(points.last.dx, points.last.dy);
    fillPath.lineTo(points.last.dx, points.last.dy);
    fillPath.lineTo(points.last.dx, size.height);
    fillPath.close();

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(path, paint);

    // End dot
    canvas.drawCircle(points.last, 5, Paint()..color = const Color(0xFF3B82F6));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
