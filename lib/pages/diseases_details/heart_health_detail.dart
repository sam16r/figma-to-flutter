import 'package:flutter/material.dart';

class HeartHealthDetail extends StatelessWidget {
  const HeartHealthDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, size: 24),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.bookmark_border, size: 24),
                        SizedBox(width: 12),
                        Icon(Icons.share, size: 24),
                      ],
                    ),
                  ],
                ),
              ),

              // Heart illustration hero
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF1F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // ECG line simulation
                      CustomPaint(
                        size: const Size(220, 60),
                        painter: _EcgPainter(),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFFEF4444,
                              ).withValues(alpha: 0.2),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xFFEF4444),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEE2E2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Color(0xFFEF4444),
                            size: 12,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Heart Health',
                            style: TextStyle(
                              color: Color(0xFFEF4444),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Heart Health Essentials',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Understanding hypertension is the first step to prevention. Learn the silent signs and how to manage your blood pressure effectively.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6B7280),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: Color(0xFF9CA3AF),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '5 min read',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                        SizedBox(width: 14),
                        Icon(
                          Icons.visibility_outlined,
                          size: 14,
                          color: Color(0xFF9CA3AF),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '2.4k views',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                        SizedBox(width: 14),
                        Icon(Icons.star, size: 14, color: Color(0xFFFBBF24)),
                        SizedBox(width: 4),
                        Text(
                          '4.9',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // 5 Silent Warning Signs
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFBEB),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFFDE68A)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.warning_amber_rounded,
                                color: Color(0xFFF97316),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '5 Silent Warning Signs',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          const _WarnSign(
                            number: 1,
                            title: 'Persistent Dizziness',
                            desc:
                                'Feeling lightheaded or losing balance without a clear cause.',
                          ),
                          const _WarnSign(
                            number: 2,
                            title: 'Chest Discomfort',
                            desc:
                                'Pressure, squeezing, or pain in the center of the chest.',
                          ),
                          const _WarnSign(
                            number: 3,
                            title: 'Shortness of Breath',
                            desc:
                                'Difficulty breathing during routine activities or while resting.',
                          ),
                          const _WarnSign(
                            number: 4,
                            title: 'Irregular Heartbeat',
                            desc:
                                'Palpitations or feeling like your heart is skipping a beat.',
                          ),
                          const _WarnSign(
                            number: 5,
                            title: 'Fatigue & Nausea',
                            desc:
                                'Unexplained exhaustion or feeling sick to your stomach.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Hypertension 101
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDBEAFE),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.monitor_heart_outlined,
                                  color: Color(0xFF3B82F6),
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Hypertension 101',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Blood pressure is measured in millimeters of mercury (mm Hg). Know your numbers:',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const _BpRow(
                            levelLabel: 'NORMAL',
                            sublabel: 'Healthy range',
                            value: '< 120/80',
                            color: Color(0xFF22C55E),
                            bgColor: Color(0xFFF0FDF4),
                          ),
                          const SizedBox(height: 8),
                          const _BpRow(
                            levelLabel: 'ELEVATED',
                            sublabel: 'Pre-hypertension',
                            value: '120-129/<80',
                            color: Color(0xFFF59E0B),
                            bgColor: Color(0xFFFFFBEB),
                          ),
                          const SizedBox(height: 8),
                          const _BpRow(
                            levelLabel: 'HYPERTENSION\nSTAGE 1',
                            sublabel: '',
                            value: '130-139/80-89',
                            color: Color(0xFFEF4444),
                            bgColor: Color(0xFFFEF2F2),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Lifestyle Habits
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDCFCE7),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.eco_outlined,
                                  color: Color(0xFF22C55E),
                                  size: 18,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Lifestyle Habits',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: const [
                              Expanded(
                                child: _HabitCard(
                                  icon: Icons.restaurant_outlined,
                                  title: 'Heart Diet',
                                  desc:
                                      'Low sodium, more greens & whole grains.',
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: _HabitCard(
                                  icon: Icons.directions_walk,
                                  title: 'Daily Move',
                                  desc: '30 mins of moderate walking daily.',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EcgPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFEF4444)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width * 0.2, size.height / 2);
    path.lineTo(size.width * 0.3, size.height * 0.1);
    path.lineTo(size.width * 0.4, size.height * 0.9);
    path.lineTo(size.width * 0.5, size.height / 2);
    path.lineTo(size.width * 0.7, size.height / 2);
    path.lineTo(size.width * 0.8, size.height * 0.2);
    path.lineTo(size.width * 0.9, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _WarnSign extends StatelessWidget {
  const _WarnSign({
    required this.number,
    required this.title,
    required this.desc,
  });
  final int number;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: Color(0xFF9CA3AF),
            ),
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
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  desc,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
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

class _BpRow extends StatelessWidget {
  const _BpRow({
    required this.levelLabel,
    required this.sublabel,
    required this.value,
    required this.color,
    required this.bgColor,
  });
  final String levelLabel;
  final String sublabel;
  final String value;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  levelLabel,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                    color: color,
                    letterSpacing: 0.3,
                  ),
                ),
                if (sublabel.isNotEmpty)
                  Text(
                    sublabel,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
              ],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class _HabitCard extends StatelessWidget {
  const _HabitCard({
    required this.icon,
    required this.title,
    required this.desc,
  });
  final IconData icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF22C55E), size: 28),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
        ),
      ],
    );
  }
}
