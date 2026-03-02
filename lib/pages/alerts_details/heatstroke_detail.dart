import 'package:flutter/material.dart';

class HeatstrokeDetail extends StatelessWidget {
  const HeatstrokeDetail({super.key});

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
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, size: 22),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'First Aid Guide',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.bookmark_border, size: 22),
                    const SizedBox(width: 12),
                    const Icon(Icons.share, size: 22),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Critical badge + time
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEE2E2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'CRITICAL',
                            style: TextStyle(
                              color: Color(0xFFEF4444),
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Updated 2m ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Handling Heatstroke',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Heatstroke is a life-threatening emergency. Take immediate action if body temperature is above 103°F (39.4°C).',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 3 icon cards
                    Row(
                      children: const [
                        Expanded(
                          child: _ActionIconCard(
                            icon: Icons.ac_unit,
                            label: 'COOL DOWN',
                            color: Color(0xFF3B82F6),
                            bgColor: Color(0xFFEFF6FF),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _ActionIconCard(
                            icon: Icons.water_drop_outlined,
                            label: 'HYDRATE',
                            color: Color(0xFF0D9488),
                            bgColor: Color(0xFFF0FDFA),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: _ActionIconCard(
                            icon: Icons.accessibility_new,
                            label: 'POSITION',
                            color: Color(0xFF8B5CF6),
                            bgColor: Color(0xFFF5F3FF),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Immediate Actions
                    const Text(
                      'Immediate Actions',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),
                    const Divider(height: 20),
                    const _ImmediateStep(
                      number: '1',
                      title: 'Move to a cooler area',
                      desc:
                          'Get the person into shade or indoors immediately. Remove excess clothing (layers, shoes, socks).',
                    ),
                    const SizedBox(height: 16),
                    const _ImmediateStep(
                      number: '2',
                      title: 'Cool the body rapidly',
                      desc:
                          'Immerse in cold water if possible, or place ice packs on neck, armpits, and groin. Mist with water and fan.',
                    ),
                    const SizedBox(height: 16),
                    const _ImmediateStep(
                      number: '3',
                      title: 'Rehydrate cautiously',
                      desc:
                          'If the person is conscious and able to swallow, give small sips of cool water or a sports drink.',
                    ),

                    const SizedBox(height: 24),

                    // DO NOT DO THIS card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF5F5),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFFECACA)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.do_not_touch_outlined,
                                color: Color(0xFFEF4444),
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'DO NOT DO THIS',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFFEF4444),
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          _DontItem(
                            text: 'Do not give sugary or alcoholic drinks.',
                          ),
                          SizedBox(height: 8),
                          _DontItem(
                            text:
                                'Do not force fluids if the person is vomiting or unconscious.',
                          ),
                          SizedBox(height: 8),
                          _DontItem(
                            text:
                                'Do not give aspirin or acetaminophen (Tylenol).',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionIconCard extends StatelessWidget {
  const _ActionIconCard({
    required this.icon,
    required this.label,
    required this.color,
    required this.bgColor,
  });
  final IconData icon;
  final String label;
  final Color color;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ImmediateStep extends StatelessWidget {
  const _ImmediateStep({
    required this.number,
    required this.title,
    required this.desc,
  });
  final String number;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: const Color(0xFF111827),
          child: Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                desc,
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
    );
  }
}

class _DontItem extends StatelessWidget {
  const _DontItem({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.close, color: Color(0xFFEF4444), size: 18),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF374151),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
