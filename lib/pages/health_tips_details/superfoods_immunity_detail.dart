import 'package:flutter/material.dart';

class SuperfoodsImmunityDetail extends StatelessWidget {
  const SuperfoodsImmunityDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF111827),
                    size: 22,
                  ),
                  const SizedBox(width: 18),
                  const Icon(
                    Icons.ios_share,
                    color: Color(0xFF111827),
                    size: 20,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category + date row
                  Row(
                    children: [
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
                          'NUTRITION GUIDE',
                          style: TextStyle(
                            color: Color(0xFF059669),
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Oct 24 • 5 min read',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Title
                  const Text(
                    "Superfoods for Immunity: Nature's Defense System",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Hero image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=800&auto=format&fit=crop',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 200,
                        color: const Color(0xFFD1FAE5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Author row
                  Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF97316),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'SJ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Sarah Jensen',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              'Clinical Nutritionist',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF3B82F6)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            color: Color(0xFF3B82F6),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Intro
                  const Text(
                    "As the seasons change, our bodies need extra support to fend off common colds and flu. While no single food is a magic cure, certain \"superfoods\" pack a powerful punch of vitamins, minerals, and antioxidants that can help strengthen your immune response.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4B5563),
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // The Power 6 heading
                  Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Color(0xFF10B981),
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'The Power 6',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),

                  // 2x3 grid
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.1,
                    children: const [
                      _FoodCard(
                        emoji: '🍋',
                        name: 'Citrus Fruits',
                        nutrient: 'VITAMIN C',
                        description:
                            'Increases production of white blood cells tailored to fighting infection.',
                        color: Color(0xFFFEF3C7),
                      ),
                      _FoodCard(
                        emoji: '🫑',
                        name: 'Red Bell Peppers',
                        nutrient: 'BETA CAROTENE',
                        description:
                            'Contains twice as much Vitamin C as citrus, plus promotes healthy skin.',
                        color: Color(0xFFFEE2E2),
                      ),
                      _FoodCard(
                        emoji: '🥦',
                        name: 'Broccoli',
                        nutrient: 'VITAMINS A, C, E',
                        description:
                            'Packed with antioxidants and fiber. Best eaten raw or lightly steamed.',
                        color: Color(0xFFD1FAE5),
                      ),
                      _FoodCard(
                        emoji: '🧄',
                        name: 'Garlic',
                        nutrient: 'ALLICIN',
                        description:
                            'High concentration of sulfur-containing compounds with immune-boosting properties.',
                        color: Color(0xFFF3F4F6),
                      ),
                      _FoodCard(
                        emoji: '🫚',
                        name: 'Ginger',
                        nutrient: 'GINGEROL',
                        description:
                            'Helps decrease inflammation, reduce sore throat, and inflammatory illnesses.',
                        color: Color(0xFFFEF3C7),
                      ),
                      _FoodCard(
                        emoji: '🟡',
                        name: 'Turmeric',
                        nutrient: 'CURCUMIN',
                        description:
                            'A natural anti-inflammatory compound that boosts the body\'s antioxidant capacity.',
                        color: Color(0xFFFEF9C3),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Closing paragraph
                  const Text(
                    "Integrating these foods into your diet doesn't have to be complicated. Start by adding garlic to your pasta sauces or grating fresh ginger into your morning tea.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4B5563),
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Immunity Shot recipe card
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF97316),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(50),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'QUICK RECIPE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.bookmark_border,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Immunity Shot',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white70,
                              size: 14,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '5 mins',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.person_outline,
                              color: Colors.white70,
                              size: 14,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '1 serving',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'INGREDIENTS',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ...[
                          '1 inch fresh ginger, peeled',
                          '1 inch fresh turmeric (or 1 tsp powder)',
                          'Juice of 1/2 lemon',
                          'Pinch of black pepper (activates turmeric)',
                        ].map(
                          (item) => Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: [
                                const Text(
                                  '• ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 18,
                            ),
                            label: const Text(
                              'Watch Preparation',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Read Next
                  const Text(
                    'Read Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _ReadNextCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400',
                          category: 'DIET',
                          categoryColor: const Color(0xFF10B981),
                          title: 'Sugar Detox: Day 1',
                          description: 'Understanding sugar withdrawal...',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _ReadNextCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=400',
                          category: 'WELLNESS',
                          categoryColor: const Color(0xFF3B82F6),
                          title: 'Hydration & Weight Loss',
                          description: 'Why drinking water before meals...',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoodCard extends StatelessWidget {
  final String emoji;
  final String name;
  final String nutrient;
  final String description;
  final Color color;

  const _FoodCard({
    required this.emoji,
    required this.name,
    required this.nutrient,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          Text(
            nutrient,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6B7280),
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFF6B7280),
                height: 1.4,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReadNextCard extends StatelessWidget {
  final String imageUrl;
  final String category;
  final Color categoryColor;
  final String title;
  final String description;

  const _ReadNextCard({
    required this.imageUrl,
    required this.category,
    required this.categoryColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 80,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) =>
                  Container(height: 80, color: const Color(0xFFF1F5F9)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    color: categoryColor,
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xFF9CA3AF),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
