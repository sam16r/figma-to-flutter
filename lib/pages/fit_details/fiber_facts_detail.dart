import 'package:flutter/material.dart';

class FiberFactsDetail extends StatelessWidget {
  const FiberFactsDetail({super.key});

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
                    // Hero image
                    Stack(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=800&auto=format&fit=crop',
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
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8B5CF6),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  'NUTRITION GUIDE',
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
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Text(
                            'Fiber Facts: The\nUnsung Hero of Digestion',
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
                          const Text(
                            'Fiber isn\'t just about digestion. It\'s a powerhouse nutrient that regulates blood sugar, lowers cholesterol, and keeps you feeling full longer. Yet, 95% of people don\'t get enough.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF374151),
                              height: 1.7,
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Daily Fiber Counter
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Daily Fiber Counter',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF111827),
                                      ),
                                    ),
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
                                        'Goal: 30g',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF3B82F6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "TODAY'S INTAKE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF9CA3AF),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: const [
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xFF111827),
                                      ),
                                    ),
                                    Text(
                                      ' / 30g',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: 12 / 30,
                                    minHeight: 8,
                                    backgroundColor: const Color(0xFFE5E7EB),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                          Color(0xFF8B5CF6),
                                        ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    _FiberTag(label: '+3g', sub: 'Snack'),
                                    const SizedBox(width: 10),
                                    _FiberTag(label: '+8g', sub: 'Meal'),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 18,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF8B5CF6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        'Log',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          const Text(
                            'Know Your Fiber Types',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          _FiberTypeCard(
                            icon: Icons.water_drop_outlined,
                            iconColor: const Color(0xFF3B82F6),
                            title: 'Soluble Fiber',
                            description:
                                'Dissolves in water to form a gel-like substance. Helps lower glucose levels and blood cholesterol.',
                            tags: const ['Oats', 'Apples', 'Beans'],
                          ),
                          const SizedBox(height: 10),
                          _FiberTypeCard(
                            icon: Icons.grain_outlined,
                            iconColor: const Color(0xFF22C55E),
                            title: 'Insoluble Fiber',
                            description:
                                'Promotes movement of material through your digestive system. Great for preventing constipation.',
                            tags: const ['Whole Wheat', 'Nuts', 'Cauliflower'],
                          ),

                          const SizedBox(height: 20),

                          // Why 30g Matters
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Why the 30g Goal Matters',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF111827),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                const Text(
                                  'Modern diets are heavy on processed foods, causing most adults to consume only 15g daily — half the recommended amount. Hitting 30g significantly reduces risks of heart disease and type 2 diabetes.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF374151),
                                    height: 1.6,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: const LinearProgressIndicator(
                                    value: 0.5,
                                    minHeight: 6,
                                    backgroundColor: Color(0xFFE5E7EB),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF3B82F6),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Avg vs Ideal',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 22),

                          const Text(
                            'Daily Fiber Checklist',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 12),

                          const _FiberFoodRow(
                            emoji: '🥑',
                            name: 'Avocado (1/2 fruit)',
                            grams: '6.7g',
                            note: 'Creamy & nutrient dense',
                          ),
                          const _FiberFoodRow(
                            emoji: '🍛',
                            name: 'Lentils (1 cup cooked)',
                            grams: '15.6g',
                            note: 'Plant-based protein powerhouse',
                          ),
                          const _FiberFoodRow(
                            emoji: '🫙',
                            name: 'Chia Seeds (2 tbsp)',
                            grams: '10g',
                            note: 'Easy to add to smoothies',
                          ),
                          const _FiberFoodRow(
                            emoji: '🫐',
                            name: 'Raspberries (1 cup)',
                            grams: '8g',
                            note: 'Sweet antioxidant boost',
                          ),
                          const _FiberFoodRow(
                            emoji: '🌿',
                            name: 'Artichoke (1 medium)',
                            grams: '7g',
                            note: 'Delicious roasted or steamed',
                          ),

                          const SizedBox(height: 20),

                          // Doctor quote
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E293B),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '"',
                                  style: TextStyle(
                                    color: Color(0xFF8B5CF6),
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900,
                                    height: 0.8,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '"If you only change one thing about your diet this year, make it hitting your fiber goal. Your gut microbiome will thank you."',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          height: 1.5,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: const [
                                          CircleAvatar(
                                            radius: 14,
                                            backgroundColor: Color(0xFF8B5CF6),
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'Dr. Sarah Jones, Gastroenterologist',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 11,
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

class _FiberTag extends StatelessWidget {
  const _FiberTag({required this.label, required this.sub});
  final String label;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Color(0xFF8B5CF6),
          ),
        ),
        Text(
          sub,
          style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
        ),
      ],
    );
  }
}

class _FiberTypeCard extends StatelessWidget {
  const _FiberTypeCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
    required this.tags,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;
  final List<String> tags;

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
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  children: tags
                      .map(
                        (t) => Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            t,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FiberFoodRow extends StatelessWidget {
  const _FiberFoodRow({
    required this.emoji,
    required this.name,
    required this.grams,
    required this.note,
  });
  final String emoji;
  final String name;
  final String grams;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 28)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                Text(
                  note,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
          Text(
            grams,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: Color(0xFF8B5CF6),
            ),
          ),
        ],
      ),
    );
  }
}
