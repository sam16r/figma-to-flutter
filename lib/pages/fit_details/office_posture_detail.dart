import 'package:flutter/material.dart';

class OfficePostureDetail extends StatelessWidget {
  const OfficePostureDetail({super.key});

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hero image with overlay
                    Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1497366216548-37526070297c?w=800&auto=format&fit=crop',
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
                                Colors.black.withValues(alpha: 0.6),
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 16,
                          left: 16,
                          child: _WellnessGuideBadge(),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Text(
                            'Master Your\nOffice Posture',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
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
                          const Text(
                            'Poor posture can lead to back pain and fatigue. Follow this 4-step checklist to align your spine and boost your energy throughout the workday.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF374151),
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 20),

                          // 4-Point Checklist
                          Row(
                            children: const [
                              Icon(
                                Icons.checklist_outlined,
                                color: Color(0xFF3B82F6),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'The 4-Point Checklist',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          const _ChecklistItem(
                            number: 1,
                            title: 'Eye Level with Screen',
                            description:
                                'Top of monitor should be at or slightly below eye level to prevent neck strain.',
                          ),
                          const _ChecklistItem(
                            number: 2,
                            title: 'Shoulders Relaxed',
                            description:
                                'Keep shoulders down and back, not hunched up towards your ears.',
                          ),
                          const _ChecklistItem(
                            number: 3,
                            title: 'Back Supported',
                            description:
                                'Ensure your lower back is fully supported by the chair\'s lumbar curve.',
                          ),
                          const _ChecklistItem(
                            number: 4,
                            title: 'Feet Flat on Floor',
                            description:
                                'Keep feet flat or on a footrest, with knees at a 90-degree angle.',
                          ),

                          const SizedBox(height: 24),

                          // Quick Desk Stretches
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Row(
                                children: [
                                  Icon(
                                    Icons.self_improvement_outlined,
                                    color: Color(0xFF3B82F6),
                                    size: 18,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Quick Desk Stretches',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF111827),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '3 mins',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          SizedBox(
                            height: 110,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                _StretchCard(
                                  title: 'Neck Rolls',
                                  duration: '30 seconds',
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1594381898411-846e7d193883?w=300&auto=format&fit=crop',
                                ),
                                SizedBox(width: 12),
                                _StretchCard(
                                  title: 'Shoulder Shrugs',
                                  duration: '45 seconds',
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=300&auto=format&fit=crop',
                                ),
                                SizedBox(width: 12),
                                _StretchCard(
                                  title: 'Wrist Circles',
                                  duration: '30 seconds',
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?w=300&auto=format&fit=crop',
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Set Posture Alert banner
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3B82F6),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                const SizedBox(width: 12),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Set Posture Alert',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        'Remind me every 30 mins.',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (_) {},
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.white.withValues(
                                    alpha: 0.4,
                                  ),
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

class _WellnessGuideBadge extends StatelessWidget {
  const _WellnessGuideBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF59E0B),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        'WELLNESS GUIDE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _ChecklistItem extends StatelessWidget {
  const _ChecklistItem({
    required this.number,
    required this.title,
    required this.description,
  });
  final int number;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: const Color(0xFFEFF6FF),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Text(
              '$number',
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B82F6),
              ),
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
                const SizedBox(height: 2),
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
      ),
    );
  }
}

class _StretchCard extends StatelessWidget {
  const _StretchCard({
    required this.title,
    required this.duration,
    required this.imageUrl,
  });
  final String title;
  final String duration;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  imageUrl,
                  width: 110,
                  height: 72,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    width: 110,
                    height: 72,
                    color: const Color(0xFFE5E7EB),
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          Text(
            duration,
            style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
          ),
        ],
      ),
    );
  }
}
