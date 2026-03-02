import 'package:flutter/material.dart';

class SmartImplantsDetail extends StatelessWidget {
  const SmartImplantsDetail({super.key});

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
                    'https://images.unsplash.com/photo-1518770660439-4636190af475?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF1E293B)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.75),
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
                        _TechPill(),
                        SizedBox(height: 8),
                        Text(
                          'Smart Implants:\nHealth Monitoring\nfrom the Inside',
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
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Color(0xFF3B82F6),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Dr. Julian Vance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
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
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // The Real-time Advantage section
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Color(0xFF3B82F6), width: 3),
                      ),
                    ),
                    child: const Text(
                      'THE REAL-TIME ADVANTAGE',
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
                          text: 'Smart implants',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              ' are miniaturized electronic devices embedded within the body to continuously monitor physiological parameters and transmit data wirelessly to healthcare providers.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Unlike wearables on the skin, implanted sensors operate from within the bloodstream or target tissue, providing far more accurate and consistent readings without any patient effort.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Body diagram card
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
                        const Text(
                          'Implant Locations',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const _ImplantLocationRow(
                          icon: Icons.psychology_outlined,
                          iconColor: Color(0xFF8B5CF6),
                          iconBg: Color(0xFFF5F3FF),
                          location: 'Brain',
                          useCase: 'Neural stimulation & seizure prediction',
                        ),
                        const SizedBox(height: 10),
                        const _ImplantLocationRow(
                          icon: Icons.favorite_outlined,
                          iconColor: Color(0xFFEF4444),
                          iconBg: Color(0xFFFFF1F2),
                          location: 'Heart',
                          useCase: 'Smart pacemakers with arrhythmia detection',
                        ),
                        const SizedBox(height: 10),
                        const _ImplantLocationRow(
                          icon: Icons.water_drop_outlined,
                          iconColor: Color(0xFF3B82F6),
                          iconBg: Color(0xFFEFF6FF),
                          location: 'Vascular',
                          useCase:
                              'Real-time blood glucose & pressure monitoring',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Clinical Benefits
                  const Text(
                    'Clinical Benefits',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 14),

                  const _ClinicalBenefitCard(
                    icon: Icons.notifications_active_outlined,
                    iconBg: Color(0xFFF0FDF4),
                    iconColor: Color(0xFF22C55E),
                    title: 'Early Warning System',
                    desc:
                        'Continuous monitoring enables detection of critical changes up to 72 hours before symptoms appear, allowing proactive intervention.',
                  ),
                  const SizedBox(height: 10),
                  const _ClinicalBenefitCard(
                    icon: Icons.tune_outlined,
                    iconBg: Color(0xFFEFF6FF),
                    iconColor: Color(0xFF3B82F6),
                    title: 'Auto-Delivery',
                    desc:
                        'Closed-loop systems can automatically administer medication in response to sensor data — an "artificial pancreas" for diabetes.',
                  ),
                  const SizedBox(height: 10),
                  const _ClinicalBenefitCard(
                    icon: Icons.cloud_upload_outlined,
                    iconBg: Color(0xFFF5F3FF),
                    iconColor: Color(0xFF8B5CF6),
                    title: 'Remote Care Enablement',
                    desc:
                        'Physicians can remotely monitor high-risk patients and adjust device parameters without an in-person visit.',
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

class _TechPill extends StatelessWidget {
  const _TechPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF3B82F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'TECH',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _ImplantLocationRow extends StatelessWidget {
  const _ImplantLocationRow({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.location,
    required this.useCase,
  });
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String location;
  final String useCase;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              Text(
                useCase,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF6B7280),
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ClinicalBenefitCard extends StatelessWidget {
  const _ClinicalBenefitCard({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.desc,
  });
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  style: const TextStyle(
                    fontSize: 14,
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
