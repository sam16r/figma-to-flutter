import 'package:flutter/material.dart';

class ExercisesDetail extends StatelessWidget {
  const ExercisesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        const Text(
          '5 Simple Exercises for Lower Back Pain',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),

        // Subtitle
        const Text(
          'A gentle routine designed by physiotherapists to relieve tension and strengthen your lumbar spine.',
          style: TextStyle(fontSize: 14, height: 1.5, color: Color(0xFF6B7280)),
        ),
        const SizedBox(height: 20),
        const Divider(color: Color(0xFFF3F4F6)),
        const SizedBox(height: 20),

        // Medical Disclaimer
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFFEF2F2),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0xFFFCA5A5).withOpacity(0.5)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.medical_information_outlined,
                color: Color(0xFFDC2626),
                size: 20,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Medical Disclaimer',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF991B1B),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'These exercises are for mild discomfort. If you experience severe or shooting pain or leg numbness, stop immediately and consult your doctor.',
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Color(0xFFDC2626),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 32),

        _buildExerciseItem(
          number: '1',
          title: 'Cat-Cow Stretch',
          placeholderColor: const Color(0xFFFFF7ED),
          steps: [
            'Start on your hands and knees with a neutral spine.',
            'Inhale as you arch your back, dropping your belly (Cow).',
            'Exhale as you round your spine toward the ceiling (Cat).',
          ],
        ),

        const SizedBox(height: 32),

        _buildExerciseItem(
          number: '2',
          title: 'Pelvic Tilts',
          placeholderColor: const Color(0xFFFEF3C7),
          steps: [
            'Lie on your back with knees bent and feet flat on floor.',
            'Tighten your stomach muscles and press your lower back into the floor.',
            'Hold for 5 seconds, then relax. Repeat 10 times.',
          ],
        ),

        const SizedBox(height: 32),

        _buildExerciseItem(
          number: '3',
          title: 'Knee-to-Chest',
          placeholderColor: const Color(0xFFE0E7FF),
          steps: [
            'Lie on your back with knees bent and feet flat.',
            'Using both hands, pull one knee up to your chest.',
            'Keep the other foot flat on the floor. Hold for 15-30 seconds.',
          ],
        ),

        const SizedBox(height: 32),

        _buildExerciseItem(
          number: '4',
          title: 'Bridge Pose',
          placeholderColor: const Color(0xFFF1F5F9),
          steps: [
            'Lie on your back with knees bent, feet hip-width apart.',
            'Press feet into floor, lift hips until body forms a straight line.',
            'Squeeze glutes at top, hold for a few seconds, lower slowly.',
          ],
        ),

        const SizedBox(height: 32),

        _buildExerciseItem(
          number: '5',
          title: "Child's Pose",
          placeholderColor: const Color(0xFFD1FAE5),
          steps: [
            'Kneel on the floor, touching your big toes together.',
            'Sit back on your heels and separate your knees hip-width.',
            'Exhale and lay your torso down between your thighs.',
          ],
        ),
      ],
    );
  }

  Widget _buildExerciseItem({
    required String number,
    required String title,
    required Color placeholderColor,
    required List<String> steps,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              decoration: const BoxDecoration(
                color: Color(0xFF1E63F4),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: placeholderColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Icon(
              Icons.fitness_center,
              size: 48,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'HOW TO PERFORM',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
            color: Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 12),
        ...steps.map(
          (step) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 6,
                  width: 6,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E63F4),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    step,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4B5563),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
