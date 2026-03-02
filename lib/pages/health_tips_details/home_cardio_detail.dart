import 'package:flutter/material.dart';

class HomeCardioDetail extends StatelessWidget {
  const HomeCardioDetail({super.key});

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
                  'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=800&auto=format&fit=crop',
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
                // Timer bottom left
                const Positioned(
                  bottom: 14,
                  left: 16,
                  child: Text(
                    '15:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                // HD badge top right (below system status bar)
                Positioned(
                  top: MediaQuery.of(context).padding.top + 56,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(50),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.white.withAlpha(80),
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      'HD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
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
                // Tags row
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
                      '15 min',
                      style: TextStyle(color: Color(0xFF6B7280), fontSize: 13),
                    ),
                    const SizedBox(width: 12),
                    const Icon(
                      Icons.local_fire_department,
                      color: Color(0xFF9CA3AF),
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '120 cal',
                      style: TextStyle(color: Color(0xFF6B7280), fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Title
                const Text(
                  'Home Cardio for Beginners',
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
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sarah Jenkins',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                        ),
                        Text(
                          'Certified Trainer',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Intro
                const Text(
                  'No equipment needed! Start your journey to better heart health today with these simple, effective moves designed to get your heart rate up without overwhelming your joints.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4B5563),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),

                // 15 Minute Routine card
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(10),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                color: Color(0xFF3B82F6),
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '15 Minute Routine',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD1FAE5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Low Impact',
                              style: TextStyle(
                                color: Color(0xFF059669),
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ..._exercises.map((ex) => _ExerciseRow(exercise: ex)),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Trainer's Insight
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3B82F6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.lightbulb_outline,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Trainer's Insight",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1E3A5F),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '"Keep water nearby. If you feel dizzy, stop immediately and march slowly in place until your heart rate drops."',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF374151),
                                height: 1.5,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),

                // Join Live Class button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_camera_front_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    label: const Text(
                      'Join Live Class',
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

class _ExerciseItem {
  final String name;
  final String duration;
  final String description;

  const _ExerciseItem({
    required this.name,
    required this.duration,
    required this.description,
  });
}

const List<_ExerciseItem> _exercises = [
  _ExerciseItem(
    name: 'Warm-Up March',
    duration: '2 min',
    description:
        'March in place, swinging your arms naturally. Keep your back straight and core engaged.',
  ),
  _ExerciseItem(
    name: 'Jumping Jacks',
    duration: '3 min',
    description:
        'Standard jacks or step-out jacks for lower impact. Focus on rhythmic breathing.',
  ),
  _ExerciseItem(
    name: 'High Knees',
    duration: '3 min',
    description:
        'Bring knees up to waist level. Engage your abs with every lift. Keep a steady pace.',
  ),
  _ExerciseItem(
    name: 'Butt Kicks',
    duration: '3 min',
    description:
        'Jog in place while kicking your heels up towards your glutes. Keeps the hamstrings active.',
  ),
  _ExerciseItem(
    name: 'Cool Down Stretch',
    duration: '4 min',
    description:
        'Slow marching and static stretches for quads and hamstrings. Deep inhales and exhales.',
  ),
];

class _ExerciseRow extends StatelessWidget {
  final _ExerciseItem exercise;

  const _ExerciseRow({required this.exercise});

  @override
  Widget build(BuildContext context) {
    final index = _exercises.indexOf(exercise);
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: const Color(0xFF3B82F6),
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      exercise.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      exercise.duration,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  exercise.description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                    height: 1.4,
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
