import 'package:flutter/material.dart';

class GutBrainDetail extends StatelessWidget {
  const GutBrainDetail({super.key});

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
                          'https://images.unsplash.com/photo-1576319155264-99536e0be1ee?w=800&auto=format&fit=crop',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: 200,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                        Container(
                          height: 200,
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
                                  color: const Color(0xFF6366F1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'MEDICAL INSIGHT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
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
                            children: const [
                              Icon(
                                Icons.access_time_outlined,
                                color: Colors.white70,
                                size: 13,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '5 min read',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                              SizedBox(width: 14),
                              Text(
                                'Dr. Lisa Wong, RD',
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
                          bottom: 28,
                          left: 16,
                          right: 16,
                          child: Text(
                            'The Gut-Brain Connection',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
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
                            'Ever had a "gut feeling" or butterflies in your stomach? That\'s your gut-brain connection at work. This intricate communication network links the emotional and cognitive centers of the brain with peripheral intestinal functions.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF374151),
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 20),

                          // The Second Brain
                          const Text(
                            'The Second Brain',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 8),

                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF374151),
                                      height: 1.6,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Hidden in the walls of your digestive system is the ',
                                      ),
                                      TextSpan(
                                        text: 'Enteric Nervous System (ENS)',
                                        style: TextStyle(
                                          color: Color(0xFF3B82F6),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '. Often called the "second brain", it consists of two thin layers of more than 100 million nerve cells lining your gastrointestinal tract from esophagus to rectum.',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF6FF),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: const Color(0xFFBFDBFE),
                                    ),
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Color(0xFF3B82F6),
                                        size: 16,
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          'Did you know? The ENS produces 95% of the body\'s serotonin.',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF1D4ED8),
                                            height: 1.4,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // The Vagus Nerve
                          const Text(
                            'The Vagus Nerve',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 8),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=800&auto=format&fit=crop',
                              height: 140,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                height: 140,
                                color: const Color(0xFF1E293B),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          const Text(
                            'The Vagus Nerve is the information superhighway connecting your brain and gut. Studies show that stimulating this nerve can reduce inflammation and improve mood regulation.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF374151),
                              height: 1.6,
                            ),
                          ),

                          const SizedBox(height: 10),
                          const _BulletPoint(
                            'Transmits signals in both directions',
                          ),
                          const _BulletPoint(
                            'Controls digestion speed and enzyme release',
                          ),
                          const _BulletPoint(
                            'Directly influences stress response',
                          ),

                          const SizedBox(height: 20),

                          // Microbiome & Mood
                          const Text(
                            'Microbiome & Mood',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            'Gut bacteria manufacture neurochemicals that the brain uses for the regulation of physiological and mental processes, including mood.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF374151),
                              height: 1.6,
                            ),
                          ),

                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF6FF),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Column(
                                    children: [
                                      Text(
                                        'GABA',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xFF3B82F6),
                                        ),
                                      ),
                                      Text(
                                        'ANXIETY CONTROL',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF9CA3AF),
                                          letterSpacing: 0.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF7ED),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Column(
                                    children: [
                                      Text(
                                        'Dopamine',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                          color: Color(0xFFD97706),
                                        ),
                                      ),
                                      Text(
                                        'MOTIVATION',
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF9CA3AF),
                                          letterSpacing: 0.4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 22),

                          // Clinical Action Steps
                          Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color(0xFF22C55E),
                                size: 18,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Clinical Action Steps',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),

                          const _ActionStep(
                            icon: Icons.eco_outlined,
                            iconColor: Color(0xFF22C55E),
                            title: 'Probiotics & Prebiotics',
                            description:
                                'Incorporate yogurt, kefir, sauerkraut, garlic, and onions into your diet.',
                          ),
                          const SizedBox(height: 10),
                          const _ActionStep(
                            icon: Icons.self_improvement_outlined,
                            iconColor: Color(0xFF3B82F6),
                            title: 'Stress Management',
                            description:
                                'Chronic stress disrupts the gut-brain axis. Try 5 mins of daily box breathing.',
                          ),
                          const SizedBox(height: 10),
                          const _ActionStep(
                            icon: Icons.no_food_outlined,
                            iconColor: Color(0xFFEF4444),
                            title: 'Limit Processed Foods',
                            description:
                                'High sugar and processed additives can damage the lining of the gut.',
                          ),

                          const SizedBox(height: 20),

                          // Book Consultation CTA
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFF6FF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.chat_bubble_outline,
                                  color: Color(0xFF3B82F6),
                                  size: 28,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Need Personalized Advice?',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF111827),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Discuss your gut health with a registered specialist.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF6B7280),
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(height: 14),
                                SizedBox(
                                  width: double.infinity,
                                  height: 44,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF3B82F6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      'Book Consultation',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
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

class _BulletPoint extends StatelessWidget {
  const _BulletPoint(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 5, right: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF6B7280),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF374151),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionStep extends StatelessWidget {
  const _ActionStep({
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
            shape: BoxShape.circle,
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
                  fontWeight: FontWeight.w700,
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
