import 'package:flutter/material.dart';

class CareTagProPage extends StatefulWidget {
  const CareTagProPage({super.key});

  static const routeName = '/caretag-pro';

  @override
  State<CareTagProPage> createState() => _CareTagProPageState();
}

class _CareTagProPageState extends State<CareTagProPage> {
  int _selectedColor = 0;

  static const _colors = [
    Color(0xFF1E293B),
    Color(0xFFCBD5E1),
    Color(0xFFD4A853),
  ];
  static const _colorLabels = ['Stealth Black', 'Arctic Silver', 'Gold'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 240,
                  pinned: true,
                  backgroundColor: const Color(0xFF1E293B),
                  leading: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: Icon(Icons.share, color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=800&auto=format&fit=crop',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                              Container(color: const Color(0xFF1E293B)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 16,
                          left: 16,
                          right: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  _NewReleasePill(),
                                  SizedBox(width: 8),
                                  _StarRating(),
                                ],
                              ),
                              SizedBox(height: 6),
                              Text(
                                'CareTag Pro',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'Titanium Health Intelligence',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Color selector
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Select Finish',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              _colorLabels[_selectedColor],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: List.generate(
                            _colors.length,
                            (i) => GestureDetector(
                              onTap: () => setState(() => _selectedColor = i),
                              child: Container(
                                width: 36,
                                height: 36,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _colors[i],
                                  border: Border.all(
                                    color: _selectedColor == i
                                        ? const Color(0xFF3B82F6)
                                        : Colors.transparent,
                                    width: 2.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        const Text(
                          'CORE FEATURES',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6B7280),
                            letterSpacing: 0.8,
                          ),
                        ),
                        const SizedBox(height: 14),

                        // 2x2 features grid
                        Row(
                          children: [
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.nights_stay_outlined,
                                iconColor: const Color(0xFF3B82F6),
                                iconBg: const Color(0xFFEFF6FF),
                                title: 'Precision Sleep',
                                desc:
                                    'Advanced sleep staging & circadian tracking.',
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.monitor_heart_outlined,
                                iconColor: const Color(0xFF22C55E),
                                iconBg: const Color(0xFFF0FDF4),
                                title: 'HRV Insights',
                                desc: '24/7 variability analysis for recovery.',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.self_improvement_outlined,
                                iconColor: const Color(0xFF8B5CF6),
                                iconBg: const Color(0xFFF5F3FF),
                                title: 'Stress Recovery',
                                desc: 'Real-time stress monitoring & alerts.',
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: _FeatureCard(
                                icon: Icons.credit_card_outlined,
                                iconColor: const Color(0xFF0D9488),
                                iconBg: const Color(0xFFF0FDFA),
                                title: 'RFID Check-in',
                                desc: 'Seamless clinic & hospital access.',
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        const Text(
                          'TECHNICAL SPECS',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6B7280),
                            letterSpacing: 0.8,
                          ),
                        ),
                        const SizedBox(height: 14),

                        const _SpecRow(
                          icon: Icons.diamond_outlined,
                          label: 'Material',
                          value: 'Grade 5 Titanium',
                        ),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        const _SpecRow(
                          icon: Icons.sensors_outlined,
                          label: 'Sensors',
                          value: 'Infrared\nPhotoplethysmography',
                        ),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        const _SpecRow(
                          icon: Icons.water_drop_outlined,
                          label: 'Water Resistance',
                          value: '100m (10 ATM)',
                        ),
                        const Divider(height: 1, color: Color(0xFFF3F4F6)),
                        const _SpecRow(
                          icon: Icons.battery_full_outlined,
                          label: 'Battery Life',
                          value: 'Up to 7 days',
                        ),

                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Sticky bottom bar
          Container(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFFE5E7EB))),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'TOTAL PRICE',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9CA3AF),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const Text(
                      '\$299',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 7,
                          height: 7,
                          decoration: const BoxDecoration(
                            color: Color(0xFF22C55E),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'In Stock',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF22C55E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Free shipping included',
                      style: TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3B82F6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Order Now →',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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

class _NewReleasePill extends StatelessWidget {
  const _NewReleasePill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF0D9488),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'NEW RELEASE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _StarRating extends StatelessWidget {
  const _StarRating();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
          4,
          (_) => const Icon(Icons.star, color: Color(0xFFF59E0B), size: 13),
        ),
        const Icon(Icons.star_half, color: Color(0xFFF59E0B), size: 13),
        const SizedBox(width: 4),
        const Text(
          '4.9',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.desc,
  });
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 18),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF6B7280),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _SpecRow extends StatelessWidget {
  const _SpecRow({
    required this.icon,
    required this.label,
    required this.value,
  });
  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF9CA3AF), size: 18),
          const SizedBox(width: 14),
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Color(0xFF374151)),
          ),
          const Spacer(),
          Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }
}
