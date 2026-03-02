import 'package:flutter/material.dart';

class IntermittentFastingDetail extends StatelessWidget {
  const IntermittentFastingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF374151),
                      size: 22,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                  const SizedBox(width: 14),
                  const Icon(
                    Icons.share_outlined,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tags
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            'CLINICAL RESEARCH',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Oct 24, 2023',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Intermittent Fasting: Clinical Benefits & Risks',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Author
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFF6366F1),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Dr. Lisa Wong, RD',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF374151),
                              ),
                            ),
                            Text(
                              'Medical Reviewer • 5 min read',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Abstract
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'ABSTRACT',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'A meta-analysis of peer-reviewed studies examining metabolic switching. Findings suggest significant improvements in insulin sensitivity during 16:8 protocols, though adherence varies by chronotype.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF374151),
                              height: 1.6,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 22),

                    // 16:8 Cycle vs Circadian Rhythm
                    const Text(
                      'The 16:8 Cycle vs. Circadian Rhythm',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // Circle diagram
                    Center(
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: CustomPaint(painter: _FastingCirclePainter()),
                      ),
                    ),

                    const SizedBox(height: 14),

                    Row(
                      children: [
                        Expanded(
                          child: _CycleInfoBox(
                            dotColor: const Color(0xFF3B82F6),
                            label: 'Feeding Window',
                            time: '12:00 PM – 8:00 PM',
                            sub: 'Optimised for digestion',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _CycleInfoBox(
                            dotColor: const Color(0xFF6366F1),
                            label: 'Fasting Phase',
                            time: '8:00 PM – 12:00 PM',
                            sub: 'Cellular repair active',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    // Clinical Benefits
                    const Text(
                      'Clinical Benefits',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 12),

                    const _BenefitRow(
                      icon: Icons.monitor_weight_outlined,
                      iconColor: Color(0xFF22C55E),
                      title: 'Weight Loss',
                      description:
                          'Reduction in visceral fat mass observed in 86% of subjects over 12 weeks.',
                    ),
                    const SizedBox(height: 10),
                    const _BenefitRow(
                      icon: Icons.water_drop_outlined,
                      iconColor: Color(0xFF3B82F6),
                      title: 'Insulin Sensitivity',
                      description:
                          'Lowered fasting insulin levels by 20-31% in pre-diabetic cohorts.',
                    ),
                    const SizedBox(height: 10),
                    const _BenefitRow(
                      icon: Icons.recycling_outlined,
                      iconColor: Color(0xFF8B5CF6),
                      title: 'Cellular Repair',
                      description:
                          'Increases autophagy processes, removing dysfunctional proteins from cells.',
                    ),

                    const SizedBox(height: 22),

                    // Potential Risks
                    const Text(
                      'Potential Risks',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 12),

                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF7ED),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFFED7AA)),
                      ),
                      child: Column(
                        children: const [
                          _RiskRow(
                            icon: Icons.warning_amber_outlined,
                            iconColor: Color(0xFFF59E0B),
                            title: 'Nutrient Deficiency',
                            description:
                                'Restricted eating windows may lead to insufficient intake of fiber, vitamins, and minerals without careful planning.',
                          ),
                          SizedBox(height: 10),
                          Divider(height: 1, color: Color(0xFFFED7AA)),
                          SizedBox(height: 10),
                          _RiskRow(
                            icon: Icons.psychology_outlined,
                            iconColor: Color(0xFFEF4444),
                            title: 'Disordered Eating',
                            description:
                                'Strict time limitations can trigger binge-eating behaviors in susceptible individuals.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 22),

                    // Medical Verdict
                    Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E293B),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.verified_outlined,
                                color: Color(0xFF22C55E),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Medical Verdict',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'While IF shows promising clinical results for metabolic health, it is not suitable for everyone. Personalization based on medical history is critical.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white70,
                              height: 1.6,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Recommendation: Consult with a healthcare provider before starting any fasting regimen, especially if you have a history of diabetes.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF93C5FD),
                              height: 1.5,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FastingCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 10;

    // Fasting arc (16 hours = 16/24 * 360 = 240 degrees)
    final fastingPaint = Paint()
      ..color = const Color(0xFF6366F1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 22
      ..strokeCap = StrokeCap.butt;

    // Feeding arc (8 hours = 8/24 * 360 = 120 degrees)
    final feedingPaint = Paint()
      ..color = const Color(0xFF3B82F6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 22
      ..strokeCap = StrokeCap.butt;

    const startAngle = -90.0 * (3.14159 / 180);
    const feedingFraction = 8 / 24;
    const fastingFraction = 16 / 24;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      feedingFraction * 2 * 3.14159,
      false,
      feedingPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + feedingFraction * 2 * 3.14159,
      fastingFraction * 2 * 3.14159,
      false,
      fastingPaint,
    );

    // Center text
    final valuePainter = TextPainter(
      text: const TextSpan(
        text: '16',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: Color(0xFF111827),
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    valuePainter.paint(
      canvas,
      Offset(
        center.dx - valuePainter.width / 2,
        center.dy - valuePainter.height / 2 - 10,
      ),
    );

    final labelPainter = TextPainter(
      text: const TextSpan(
        text: 'FASTING',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: Color(0xFF9CA3AF),
          letterSpacing: 0.5,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    labelPainter.paint(
      canvas,
      Offset(center.dx - labelPainter.width / 2, center.dy + 10),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _CycleInfoBox extends StatelessWidget {
  const _CycleInfoBox({
    required this.dotColor,
    required this.label,
    required this.time,
    required this.sub,
  });
  final Color dotColor;
  final String label;
  final String time;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF374151),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
          Text(
            sub,
            style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
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
    required this.description,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: iconColor, size: 18),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 12,
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

class _RiskRow extends StatelessWidget {
  const _RiskRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 18),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 12,
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
