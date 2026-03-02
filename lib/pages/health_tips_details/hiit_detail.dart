import 'package:flutter/material.dart';

class HiitDetail extends StatelessWidget {
  const HiitDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Video-style hero
        SliverAppBar(
          expandedHeight: 240,
          pinned: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: Color(0xFF111827),
              ),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.bookmark_border,
                size: 20,
                color: Color(0xFF111827),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 12, 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.ios_share,
                size: 18,
                color: Color(0xFF111827),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=800&auto=format&fit=crop',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const ColoredBox(color: Color(0xFF1F2937)),
                ),
                Container(color: Colors.black.withAlpha(80)),
                // Play button
                const Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 56,
                  ),
                ),
                // Timer
                const Positioned(
                  bottom: 14,
                  right: 16,
                  child: Text(
                    '04:25',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Content
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tags
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'FITNESS',
                        style: TextStyle(
                          color: Color(0xFF3B82F6),
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Icon(
                      Icons.access_time,
                      color: Color(0xFF9CA3AF),
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '6 min read',
                      style: TextStyle(color: Color(0xFF6B7280), fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Title
                const Text(
                  'The Science of HIIT:\nEfficiency Meets Results',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 14),

                // Author row
                Row(
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1F2937),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'MT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Marcus Thorne',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                        ),
                        Text(
                          'Sports Cardiologist',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // What is HIIT section
                _SectionHeader(
                  title: 'What is HIIT?',
                  borderColor: const Color(0xFF3B82F6),
                ),
                const SizedBox(height: 12),
                const Text(
                  'High-Intensity Interval Training (HIIT) is a cardiovascular exercise strategy alternating short periods of intense anaerobic exercise with less intense recovery periods. Unlike steady-state cardio, HIIT forces your heart rate to spike abruptly.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4B5563),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Physiologically, this rapid fluctuation challenges the cardiovascular system to adapt quickly, improving VO2 max (maximum oxygen consumption) more efficiently than traditional endurance training. It triggers a metabolic disturbance in the body burning calories at a higher rate even after the workout has finished.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4B5563),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),

                // Afterburn Effect section
                _SectionHeader(
                  title: 'The Afterburn Effect',
                  borderColor: const Color(0xFFF59E0B),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Known scientifically as Excess Post-exercise Oxygen Consumption (EPOC), the afterburn effect means your body continues to consume oxygen and burn calories as it restores itself to a resting state.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4B5563),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),

                // Calorie Burn chart
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'CALORIE BURN (24 HOURS)',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6B7280),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Steady Jog bar
                          Column(
                            children: [
                              const Text(
                                '~300',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: 70,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFBFDBFE),
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Steady Jog',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF9CA3AF),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          // HIIT bar
                          Column(
                            children: [
                              const Text(
                                '~450+',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF59E0B),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: 70,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF59E0B),
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'HIIT Session',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF9CA3AF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '*Based on a 30-min session for an average adult.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Sample Routine
                const Text(
                  'A Sample Routine',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Beginner Circuit (Repeat 3x)   12 Mins Total',
                  style: TextStyle(fontSize: 13, color: Color(0xFF6B7280)),
                ),
                const SizedBox(height: 14),

                _RoutineRow(
                  icon: Icons.directions_run,
                  iconBg: const Color(0xFFD1FAE5),
                  iconColor: const Color(0xFF10B981),
                  name: 'Burpees',
                  description: 'Full body explosive movement',
                  duration: '30s',
                  type: 'WORK',
                  typeColor: const Color(0xFF10B981),
                ),
                const SizedBox(height: 8),
                _RoutineRow(
                  icon: Icons.timer_outlined,
                  iconBg: const Color(0xFFF1F5F9),
                  iconColor: const Color(0xFF6B7280),
                  name: 'Rest',
                  description: 'Deep breathing, keep moving slightly',
                  duration: '15s',
                  type: 'REST',
                  typeColor: const Color(0xFF6B7280),
                ),
                const SizedBox(height: 8),
                _RoutineRow(
                  icon: Icons.fitness_center,
                  iconBg: const Color(0xFFD1FAE5),
                  iconColor: const Color(0xFF10B981),
                  name: 'Mountain Climbers',
                  description: 'Core and cardio focus',
                  duration: '30s',
                  type: 'WORK',
                  typeColor: const Color(0xFF10B981),
                ),
                const SizedBox(height: 24),

                // Heart Rate Zone Calculator
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF4444),
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Heart Rate Zone Calculator',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1E3A5F),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Calculate your target Max Heart Rate (MHR) for effective HIIT training.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6B7280),
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'YOUR AGE',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF9CA3AF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: const Color(0xFFBFDBFE),
                                    ),
                                  ),
                                  child: const Text(
                                    '30',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF111827),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'TARGET ZONE (85%)',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF9CA3AF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    const Text(
                                      '162',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF3B82F6),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Text(
                                      'BPM',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6B7280),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Text(
                            'Low intensity',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: LinearProgressIndicator(
                                  value: 0.85,
                                  backgroundColor: const Color(0xFFBFDBFE),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                        Color(0xFF3B82F6),
                                      ),
                                  minHeight: 6,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Max',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Center(
                        child: Text(
                          'HIIT Zone (80-90%)',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF3B82F6),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),

                // Save button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    label: const Text(
                      'Save to Workout Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B82F6),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final Color borderColor;

  const _SectionHeader({required this.title, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 22,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
      ],
    );
  }
}

class _RoutineRow extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String name;
  final String description;
  final String duration;
  final String type;
  final Color typeColor;

  const _RoutineRow({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.name,
    required this.description,
    required this.duration,
    required this.type,
    required this.typeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
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
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                duration,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: typeColor,
                ),
              ),
              Text(
                type,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: typeColor.withAlpha(180),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
