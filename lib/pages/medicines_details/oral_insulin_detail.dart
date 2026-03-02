import 'package:flutter/material.dart';

class OralInsulinDetail extends StatelessWidget {
  const OralInsulinDetail({super.key});

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
                    'https://images.unsplash.com/photo-1579684385127-1ef15d508118?w=800&auto=format&fit=crop',
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
                        _Phase3Pill(),
                        SizedBox(height: 8),
                        Text(
                          'Managing Diabetes:\nNew Oral Insulin',
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
                              '4 min read',
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
                  // THE RESEARCH label
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: Color(0xFF3B82F6), width: 3),
                      ),
                    ),
                    child: const Text(
                      'THE RESEARCH',
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
                          text: 'Phase 3 clinical trials',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text:
                              ' of the oral insulin formulation OI-362 have demonstrated efficacy comparable to subcutaneous injections in managing blood glucose levels for Type 2 diabetes patients.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'The formulation uses a novel polymer coating that protects insulin from digestive enzymes and facilitates absorption through the intestinal wall. This breakthrough could eliminate the need for daily injections for millions of patients worldwide.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Efficacy Comparison card
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
                              'Efficacy Comparison',
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
                              child: const Text(
                                '12-Week Trial',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xFF3B82F6),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        _EfficacyRow(
                          label: 'Oral Insulin',
                          value: 0.87,
                          color: const Color(0xFF3B82F6),
                          displayValue: '87%',
                        ),
                        const SizedBox(height: 10),
                        _EfficacyRow(
                          label: 'Injectable (control)',
                          value: 0.91,
                          color: const Color(0xFF22C55E),
                          displayValue: '91%',
                        ),
                        const SizedBox(height: 10),
                        _EfficacyRow(
                          label: 'Placebo',
                          value: 0.38,
                          color: const Color(0xFFE5E7EB),
                          displayValue: '38%',
                          textColor: const Color(0xFF9CA3AF),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          '* HbA1c reduction at 12 weeks',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // How it Works
                  const Text(
                    'How it Works',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 14),

                  const _MechanismCard(
                    icon: Icons.shield_outlined,
                    iconBg: Color(0xFFF0FDF4),
                    iconColor: Color(0xFF22C55E),
                    title: 'Digestive Shield',
                    desc:
                        'A proprietary polymer coating protects insulin molecules from stomach acid and digestive enzymes until they reach the small intestine.',
                  ),
                  const SizedBox(height: 10),
                  const _MechanismCard(
                    icon: Icons.my_location_outlined,
                    iconBg: Color(0xFFEFF6FF),
                    iconColor: Color(0xFF3B82F6),
                    title: 'Targeted Absorption',
                    desc:
                        'Specialized permeation enhancers temporarily open tight junctions in the intestinal lining, allowing insulin to pass into the bloodstream.',
                  ),

                  const SizedBox(height: 24),

                  // Timeline to Approval
                  const Text(
                    'Timeline to Approval',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const _TimelineItem(
                    stage: 'Phase 1 & 2',
                    desc: 'Safety & initial efficacy confirmed',
                    status: TimelineStatus.completed,
                    isLast: false,
                  ),
                  const _TimelineItem(
                    stage: 'Phase 3 Trials',
                    desc: '2,400+ participants across 14 countries',
                    status: TimelineStatus.current,
                    isLast: false,
                  ),
                  const _TimelineItem(
                    stage: 'FDA Submission (NDA)',
                    desc: 'Regulatory review expected Q3 2025',
                    status: TimelineStatus.upcoming,
                    isLast: false,
                  ),
                  const _TimelineItem(
                    stage: 'Market Approval',
                    desc: 'Projected availability 2026',
                    status: TimelineStatus.goal,
                    isLast: true,
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

class _Phase3Pill extends StatelessWidget {
  const _Phase3Pill();

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
          Icon(Icons.science_outlined, color: Colors.white, size: 12),
          SizedBox(width: 4),
          Text(
            'PHASE 3 TRIALS',
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

class _EfficacyRow extends StatelessWidget {
  const _EfficacyRow({
    required this.label,
    required this.value,
    required this.color,
    required this.displayValue,
    this.textColor = const Color(0xFF111827),
  });
  final String label;
  final double value;
  final Color color;
  final String displayValue;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
            Text(
              displayValue,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: color == const Color(0xFFE5E7EB)
                    ? const Color(0xFF9CA3AF)
                    : color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: const Color(0xFFE5E7EB),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}

class _MechanismCard extends StatelessWidget {
  const _MechanismCard({
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

enum TimelineStatus { completed, current, upcoming, goal }

class _TimelineItem extends StatelessWidget {
  const _TimelineItem({
    required this.stage,
    required this.desc,
    required this.status,
    required this.isLast,
  });
  final String stage;
  final String desc;
  final TimelineStatus status;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    Color dotColor;
    Color textColor;
    Widget? badge;

    switch (status) {
      case TimelineStatus.completed:
        dotColor = const Color(0xFF22C55E);
        textColor = const Color(0xFF111827);
        badge = Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: const Color(0xFFF0FDF4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Completed',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Color(0xFF22C55E),
            ),
          ),
        );
      case TimelineStatus.current:
        dotColor = const Color(0xFF3B82F6);
        textColor = const Color(0xFF111827);
        badge = Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: const Color(0xFFEFF6FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'In Progress',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3B82F6),
            ),
          ),
        );
      case TimelineStatus.upcoming:
        dotColor = const Color(0xFFE5E7EB);
        textColor = const Color(0xFF6B7280);
        badge = null;
      case TimelineStatus.goal:
        dotColor = const Color(0xFFF59E0B);
        textColor = const Color(0xFF6B7280);
        badge = Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFBEB),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Goal',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Color(0xFFF59E0B),
            ),
          ),
        );
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            child: Column(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: dotColor,
                    shape: BoxShape.circle,
                    border:
                        status == TimelineStatus.upcoming ||
                            status == TimelineStatus.goal
                        ? Border.all(color: const Color(0xFFD1D5DB), width: 2)
                        : null,
                  ),
                  child: status == TimelineStatus.completed
                      ? const Icon(Icons.check, color: Colors.white, size: 10)
                      : null,
                ),
                if (!isLast)
                  Expanded(
                    child: Container(width: 2, color: const Color(0xFFE5E7EB)),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        stage,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: textColor,
                        ),
                      ),
                      if (badge != null) ...[const SizedBox(width: 8), badge],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    desc,
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor == const Color(0xFF111827)
                          ? const Color(0xFF6B7280)
                          : textColor,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
