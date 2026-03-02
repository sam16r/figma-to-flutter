import 'package:flutter/material.dart';

class BreastSelfExamDetail extends StatelessWidget {
  const BreastSelfExamDetail({super.key});

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

              const SizedBox(height: 20),

              // Hero info card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFFCE7F3)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFEC4899).withValues(alpha: 0.08),
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFCE7F3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.shield_outlined,
                              color: Color(0xFFEC4899),
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Breast Self-Exam',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Regular self-exams help you know what is normal for you. Perform this check once a month, ideally a few days after your period ends.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6B7280),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.timer_outlined,
                            color: Color(0xFFEC4899),
                            size: 14,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Takes about 5 minutes',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFEC4899),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // Next scheduled exam
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xFF6B7280),
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next scheduled exam',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                            Text(
                              'In 22 days',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF111827),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Reminder',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF374151),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Switch(
                            value: true,
                            onChanged: (_) {},
                            activeColor: const Color(0xFFEC4899),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Steps
              _ExamSection(
                number: 1,
                title: 'Visual Check',
                icon: Icons.visibility_outlined,
                stepTitle: 'In front of a mirror',
                stepDescription:
                    'Stand with your hands on your hips. Look for any changes in shape, size, or skin texture. Check for any dimpling, puckering, or redness.',
              ),
              const SizedBox(height: 16),
              _ExamSection(
                number: 2,
                title: 'Physical Check',
                icon: Icons.pan_tool_alt_outlined,
                stepTitle: 'Lying down',
                stepDescription:
                    'Lie on your back with a pillow under your right shoulder. Use your left hand to check your right breast. Repeat on the other side.',
              ),
              const SizedBox(height: 16),
              _ExamSection(
                number: 3,
                title: 'A-Z Search',
                icon: Icons.touch_app_outlined,
                stepTitle: 'Using pads of fingers',
                stepDescription:
                    'Use firm, smooth touch with the first few finger pads of your hand, keeping fingers flat and together. Cover the entire breast from top to bottom, side to side.',
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExamSection extends StatelessWidget {
  const _ExamSection({
    required this.number,
    required this.title,
    required this.icon,
    required this.stepTitle,
    required this.stepDescription,
  });
  final int number;
  final String title;
  final IconData icon;
  final String stepTitle;
  final String stepDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color(0xFFEC4899),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '$number',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF9FAFB),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFFCE7F3)),
            ),
            child: Center(
              child: Icon(icon, color: const Color(0xFFEC4899), size: 40),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.person_outlined,
                  color: Color(0xFFEC4899),
                  size: 18,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stepTitle,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF111827),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        stepDescription,
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
            ),
          ),
        ],
      ),
    );
  }
}
