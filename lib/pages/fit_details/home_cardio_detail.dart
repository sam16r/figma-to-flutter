import 'package:flutter/material.dart';

class HomeCardioDetail extends StatelessWidget {
  const HomeCardioDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
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
                    // Tag + title
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'FITNESS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '5 Home Cardio Exercises for Longevity',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Meta
                    Row(
                      children: [
                        const Text(
                          '4 MIN READ',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xFF9CA3AF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 12,
                              backgroundColor: Color(0xFF6366F1),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Dr. Ray',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF374151),
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Sports Medicine Specialist',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Cardiovascular health is the ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                    ),

                    // Hero video thumbnail
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=800&auto=format&fit=crop',
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              height: 180,
                              color: const Color(0xFF1E293B),
                            ),
                          ),
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.black.withValues(alpha: 0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text(
                                '14:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF374151),
                          height: 1.7,
                        ),
                        children: [
                          TextSpan(
                            text: 'gold standard',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                            text:
                                ' for longevity. Regular cardio doesn\'t just burn calories; it strengthens your heart muscle, lowers blood pressure, and improves oxygen flow throughout your body. Here is a simple, equipment-free routine designed to keep your heart young.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    // CareTag Sync Banner
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFBFDBFE)),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_outlined,
                            color: Color(0xFF3B82F6),
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Track your heart rate',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF1D4ED8),
                                  ),
                                ),
                                Text(
                                  'Sync with your CareTag smartwatch for real-time data.',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF374151),
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3B82F6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Start Tracking',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Exercises
                    _ExerciseItem(
                      number: 1,
                      title: 'Jumping Jacks',
                      duration: '60 sec',
                      imageUrl:
                          'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?w=400&auto=format&fit=crop',
                      howTo:
                          'Stand upright with your legs together, arms at your sides. Bend your knees slightly, and jump into the air. As you jump, spread your legs to be about shoulder-width apart. Stretch your arms out and over your head. Return to the starting position and repeat.',
                    ),
                    _ExerciseItem(
                      number: 2,
                      title: 'Mountain Climbers',
                      duration: '45 sec',
                      imageUrl:
                          'https://images.unsplash.com/photo-1554344728-2d4afe5bae26?w=400&auto=format&fit=crop',
                      howTo:
                          'Start in a plank position. Drive your right knee to your chest. Switch legs, pulling one knee out and bringing the other in. Keep your hips down and run your knees in and out as far and as fast as you can.',
                    ),
                    _ExerciseItem(
                      number: 3,
                      title: 'Burpees',
                      duration: '30 sec',
                      tag: 'MINIMAL NATURAL',
                      imageUrl:
                          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400&auto=format&fit=crop',
                      howTo:
                          'Stand with feet shoulder-width apart. Lower into a squat and place your hands on the floor. Jump your feet back into a plank position. Do a push-up, then jump your feet back to your hands. Explode up into a jump, reaching hands overhead.',
                    ),
                    _ExerciseItem(
                      number: 4,
                      title: 'High Knees',
                      duration: '60 sec',
                      imageUrl:
                          'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=400&auto=format&fit=crop',
                      howTo:
                          'Stand with feet hip-width apart. Lift up your left knee to your chest. Continue the movement, alternating legs and moving at a sprinting or running pace.',
                    ),
                    _ExerciseItem(
                      number: 5,
                      title: 'Shadow Boxing',
                      duration: '2 min',
                      imageUrl:
                          'https://images.unsplash.com/photo-1552072092-7f9b8d63efcb?w=400&auto=format&fit=crop',
                      howTo:
                          'Adopt a fighting stance and bounce on your toes. Throw combinations (jabs, crosses, hooks, uppercuts) at an imaginary opponent. Keep moving your feet and keep your hands up to protect your face.',
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // Sticky bottom bar
            Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xFFE5E7EB))),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 18,
                  ),
                  label: const Text(
                    'Mark Workout Complete',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF111827),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExerciseItem extends StatelessWidget {
  const _ExerciseItem({
    required this.number,
    required this.title,
    required this.duration,
    required this.imageUrl,
    required this.howTo,
    this.tag,
  });
  final int number;
  final String title;
  final String duration;
  final String imageUrl;
  final String howTo;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: const BoxDecoration(
                color: Color(0xFF3B82F6),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                '$number',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                duration,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF374151),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.network(
                imageUrl,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    Container(height: 160, color: const Color(0xFFE5E7EB)),
              ),
              if (tag != null)
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      tag!,
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF374151),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'HOW TO',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Color(0xFF9CA3AF),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          howTo,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF374151),
            height: 1.6,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
