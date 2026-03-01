import 'package:flutter/material.dart';

class SleepQualityDetail extends StatelessWidget {
  const SleepQualityDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category tag
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFEFF6FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'CLINICAL ADVICE',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
              color: Color(0xFF3B82F6),
            ),
          ),
        ),
        const SizedBox(height: 14),

        // Title
        const Text(
          'The Secret to Better Sleep Quality',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16),

        // Author Row
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dr. Sarah Jenkins',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: const [
                      Icon(
                        Icons.access_time,
                        size: 12,
                        color: Color(0xFF9CA3AF),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '5 min read  ·  Oct 10, 2023',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(color: Color(0xFFF3F4F6)),
        const SizedBox(height: 20),

        // Article body
        const Text(
          'Sleep is the foundation of health, yet nearly one-third of adults report getting less than the recommended amount. In my clinical practice, I often see patients who treat sleep as a luxury rather than a biological necessity.',
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF4B5563)),
        ),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF4B5563),
            ),
            children: [
              TextSpan(
                text:
                    'The difference between "getting sleep" and "getting rest" lies in ',
              ),
              TextSpan(
                text: 'sleep hygiene',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(
                text:
                    '—the habits and practices that are conducive to sleeping well on a regular basis.',
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),

        const Text(
          'The 10-3-2-1-0 Rule',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'One of the most effective frameworks I recommend is the 10-3-2-1-0 rule. It provides a structured countdown to bedtime that prepares your body physiologically for rest.',
          style: TextStyle(fontSize: 16, height: 1.6, color: Color(0xFF4B5563)),
        ),
        const SizedBox(height: 20),

        _buildRuleItem('10', 'hours before bed: No more caffeine.'),
        _buildRuleItem('3', 'hours before bed: No more food or alcohol.'),
        _buildRuleItem('2', 'hours before bed: No more work.'),
        _buildRuleItem('1', 'hour before bed: No more screen time.'),
        _buildRuleItem(
          '0',
          'the number of times you hit the snooze button in the morning.',
        ),

        const SizedBox(height: 24),

        // Goal Card
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0E7FF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.nightlight_round,
                      color: Color(0xFF6366F1),
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Set a Sleep Goal',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Commit to a consistent bedtime for the next 7 days to reset your circadian rhythm.',
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.4,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E63F4),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Set 10:30 PM Goal',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 32),

        const Text(
          'Blue Light Impact',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF4B5563),
            ),
            children: [
              TextSpan(
                text: 'Our circadian rhythms are heavily influenced by ',
              ),
              TextSpan(
                text: 'light',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(
                text:
                    ' cues. Blue light, emitted by phones and laptops, suppresses melatonin production more ',
              ),
              TextSpan(
                text: 'than',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(text: ' any other light spectrum. This tricks your '),
              TextSpan(
                text: 'brain',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(text: ' into thinking '),
              TextSpan(
                text: "it's still",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(text: ' daytime.'),
            ],
          ),
        ),

        const SizedBox(height: 32),

        const Text(
          'Optimal Room Temperature',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF4B5563),
            ),
            children: [
              TextSpan(
                text:
                    'Your body temperature needs to drop by about 2-3 degrees Fahrenheit to initiate sleep. A room that is too warm will inhibit this process. The optimal ',
              ),
              TextSpan(
                text: 'bedroom temperature',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              TextSpan(text: ' is surprisingly cool—around 65°F (18.3°C).'),
            ],
          ),
        ),

        const SizedBox(height: 32),

        // About the Author Card
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ABOUT THE AUTHOR',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                  color: Color(0xFF9CA3AF),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey[300],
                    child: const Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Sarah Jenkins',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                        ),
                        Text(
                          'Chief Medical Officer',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1E63F4),
                          ),
                        ),
                        Text(
                          'Specializes in Sleep Medicine & Neurology',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Dr. Jenkins has over 15 years of experience treating sleep disorders and is a leading voice in preventative sleep hygiene strategies.',
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF4B5563),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share, size: 18),
                  label: const Text('Share Article'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF111827),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRuleItem(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xFF1E63F4),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Color(0xFF4B5563),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
