import 'package:flutter/material.dart';

class HeartValveDetail extends StatelessWidget {
  const HeartValveDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: const Color(0xFF1E293B),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
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
                    'https://images.unsplash.com/photo-1530026405186-ed1f139313f3?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF1E293B)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
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
                        _BreakthroughPill(),
                        SizedBox(height: 8),
                        Text(
                          'A New Era for Heart\nValve Surgery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white70,
                              size: 13,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '6 min read',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.verified_outlined,
                              color: Colors.white70,
                              size: 13,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Medically Reviewed',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
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
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // THE PROCEDURE label
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Color(0xFF3B82F6), width: 3),
                      ),
                    ),
                    child: const Text(
                      'THE PROCEDURE',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3B82F6),
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Transcatheter Aortic Valve Implantation (TAVI)',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              ' is revolutionizing how we treat aortic stenosis.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Unlike traditional open-heart surgery, which requires sternotomy (opening the chest), TAVI uses a catheter inserted through the leg to implant a new valve within the diseased one. This minimally invasive approach preserves the chest structure and significantly reduces trauma to the body.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Procedure Comparison card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Procedure Comparison',
                              style: TextStyle(
                                fontSize: 15,
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
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '3D View',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF3B82F6),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.rotate_90_degrees_ccw,
                                    size: 13,
                                    color: Color(0xFF3B82F6),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Image.network(
                                'https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=600&auto=format&fit=crop',
                                height: 140,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                  height: 140,
                                  color: const Color(0xFFE5E7EB),
                                ),
                              ),
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withValues(alpha: 0.4),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                left: 12,
                                child: Text(
                                  'Traditional Open-Heart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                right: 12,
                                child: Text(
                                  'TAVI (Catheter)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Center(
                                child: Icon(
                                  Icons.play_circle_outline,
                                  color: Colors.white70,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Center(
                          child: Text(
                            'Tap to interact and rotate the model',
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF9CA3AF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Patient Benefits
                  const Text(
                    'Patient Benefits',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 14),

                  const _BenefitCard(
                    icon: Icons.timer_outlined,
                    iconBg: Color(0xFFF0FDF4),
                    iconColor: Color(0xFF22C55E),
                    borderColor: Color(0xFF22C55E),
                    title: '40% Faster Recovery',
                    desc:
                        'Most patients return to normal daily activities within days rather than weeks.',
                  ),
                  const SizedBox(height: 10),
                  const _BenefitCard(
                    icon: Icons.healing_outlined,
                    iconBg: Color(0xFFEFF6FF),
                    iconColor: Color(0xFF3B82F6),
                    borderColor: Color(0xFF3B82F6),
                    title: 'Less Scarring',
                    desc:
                        'No large chest incision means minimal visible scarring and reduced risk of infection.',
                  ),
                  const SizedBox(height: 10),
                  const _BenefitCard(
                    icon: Icons.hotel_outlined,
                    iconBg: Color(0xFFF5F3FF),
                    iconColor: Color(0xFF8B5CF6),
                    borderColor: Color(0xFF8B5CF6),
                    title: 'Minimal Hospital Stay',
                    desc:
                        'Average stay is reduced to 2-3 days compared to 7-10 days for open surgery.',
                  ),

                  const SizedBox(height: 24),

                  // Doctor quote card
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Text(
                            '9',
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w900,
                              color: Colors.white.withValues(alpha: 0.06),
                              height: 1,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xFF3B82F6),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Sarah Johnson',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Chief of Cardiology, Heart Institute',
                                      style: TextStyle(
                                        color: Colors.white60,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              '"This procedure isn\'t just an alternative; for many high-risk patients, it is the only viable option. The data on long-term outcomes is incredibly promising, shifting the paradigm of cardiac care."',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BreakthroughPill extends StatelessWidget {
  const _BreakthroughPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF0D9488),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.bolt, color: Colors.white, size: 12),
          SizedBox(width: 4),
          Text(
            'BREAKTHROUGH',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _BenefitCard extends StatelessWidget {
  const _BenefitCard({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.borderColor,
    required this.title,
    required this.desc,
  });
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final Color borderColor;
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
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: borderColor,
                  ),
                ),
                const SizedBox(height: 3),
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
          ),
        ],
      ),
    );
  }
}
