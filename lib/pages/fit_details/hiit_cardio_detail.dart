import 'package:flutter/material.dart';

class HiitCardioDetail extends StatelessWidget {
  const HiitCardioDetail({super.key});

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hero
                    Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=800&auto=format&fit=crop',
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: 220,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                        Container(
                          height: 220,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.65),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 14,
                          left: 16,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF59E0B),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'WORKOUT SCIENCE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  '5 MIN READ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 16,
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 14,
                                backgroundColor: Color(0xFF6366F1),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'Dr. Ray, Sports Medicine',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 30,
                          left: 16,
                          right: 16,
                          child: Text(
                            'HIIT: The Science of\nEfficient Cardio',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF374151),
                                height: 1.7,
                              ),
                              children: [
                                TextSpan(text: 'Unlock the power of '),
                                TextSpan(
                                  text:
                                      'EPOC (Excess Post-exercise Oxygen Consumption)',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF111827),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '. High-intensity intervals push your body beyond its oxygen limits, triggering a metabolic afterburn effect.',
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // The Metabolic Shift
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.bolt,
                                      color: Color(0xFF3B82F6),
                                      size: 18,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'The Metabolic Shift',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF111827),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                _MetabolicChart(),
                                const SizedBox(height: 8),
                                const Text(
                                  'HIIT keeps your metabolism elevated for up to 24 hours post-workout, burning up to 15% more calories than steady jogging.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF6B7280),
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Sample Tabata Routine
                          Row(
                            children: const [
                              Icon(
                                Icons.fitness_center,
                                color: Color(0xFF22C55E),
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Sample Tabata Routine',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Standard Protocol',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF6B7280),
                                  ),
                                ),
                                const Text(
                                  '4 Minutes Total • High Intensity',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _TabataTimer(
                                      value: '20s',
                                      label: 'WORK',
                                      color: const Color(0xFF3B82F6),
                                    ),
                                    const SizedBox(width: 20),
                                    _TabataTimer(
                                      value: '10s',
                                      label: 'REST',
                                      color: const Color(0xFF9CA3AF),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                const Divider(
                                  height: 1,
                                  color: Color(0xFFF3F4F6),
                                ),
                                const SizedBox(height: 12),
                                const _ExerciseListItem('Sprint / High Knees'),
                                const _ExerciseListItem('Burpees'),
                                const _ExerciseListItem('Jump Squats'),
                                const _ExerciseListItem('Mountain Climbers'),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          // Heart Health Impact
                          Row(
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Color(0xFFEF4444),
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Heart Health Impact',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF1F2),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xFFFFCDD2),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.trending_up,
                                  color: Color(0xFFEF4444),
                                  size: 22,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'VO2 Max Improvement',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF111827),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFF374151),
                                            height: 1.5,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Clinical studies show a ',
                                            ),
                                            TextSpan(
                                              text: '15% increase in VO2 max',
                                              style: TextStyle(
                                                color: Color(0xFFEF4444),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' after 8 weeks of consistent HIIT training, improving overall cardiovascular efficiency.',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 16),

                          // Track HR Zones
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Track Your HR Zones',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF111827),
                                      ),
                                    ),
                                    Spacer(),
                                    _CareTagBadge(),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Connect your smartwatch to monitor real-time zones during the workout.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF6B7280),
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                // HR zone bar
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: 10,
                                          color: const Color(0xFF93C5FD),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          height: 10,
                                          color: const Color(0xFF22C55E),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          height: 10,
                                          color: const Color(0xFFEF4444),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Row(
                                  children: [
                                    Text(
                                      'Z1',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF9CA3AF),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'Z2',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF9CA3AF),
                                      ),
                                    ),
                                    SizedBox(width: 28),
                                    Text(
                                      'Z3',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF9CA3AF),
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Z4/5',
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFFEF4444),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
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

class _MetabolicChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: CustomPaint(painter: _MetabolicPainter()),
    );
  }
}

class _MetabolicPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF3B82F6)
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    final baselinePaint = Paint()
      ..color = const Color(0xFF9CA3AF)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // Baseline (steady state)
    final baseY = size.height * 0.7;
    canvas.drawLine(Offset(0, baseY), Offset(size.width, baseY), baselinePaint);

    // HIIT curve — spike then gradual decline
    final path = Path()
      ..moveTo(0, baseY)
      ..lineTo(size.width * 0.15, baseY * 0.2)
      ..quadraticBezierTo(
        size.width * 0.3,
        baseY * 0.1,
        size.width * 0.4,
        baseY * 0.3,
      )
      ..quadraticBezierTo(
        size.width * 0.6,
        baseY * 0.5,
        size.width * 0.8,
        baseY * 0.65,
      )
      ..lineTo(size.width, baseY * 0.7);
    canvas.drawPath(path, paint);

    // "HIIT" label
    final tp = TextPainter(
      text: const TextSpan(
        text: 'HIIT',
        style: TextStyle(
          color: Color(0xFF3B82F6),
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(canvas, Offset(size.width * 0.12, baseY * 0.08));

    // X-axis labels
    final labels = ['Workout', '+2h', '+12h', '+24h'];
    final xPositions = [0.0, 0.25, 0.6, 0.9];
    for (var i = 0; i < labels.length; i++) {
      final lp = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: const TextStyle(color: Color(0xFF9CA3AF), fontSize: 9),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      lp.paint(canvas, Offset(size.width * xPositions[i], size.height - 14));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _TabataTimer extends StatelessWidget {
  const _TabataTimer({
    required this.value,
    required this.label,
    required this.color,
  });
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 3),
          ),
          alignment: Alignment.center,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}

class _ExerciseListItem extends StatelessWidget {
  const _ExerciseListItem(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Color(0xFF9CA3AF),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            name,
            style: const TextStyle(fontSize: 13, color: Color(0xFF374151)),
          ),
        ],
      ),
    );
  }
}

class _CareTagBadge extends StatelessWidget {
  const _CareTagBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        'CareTag Sync',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: Color(0xFF3B82F6),
        ),
      ),
    );
  }
}
