import 'package:flutter/material.dart';

class BioprintingDetail extends StatelessWidget {
  const BioprintingDetail({super.key});

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
                    'https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFF1E293B)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.85),
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
                            _InnovationFeaturePill(),
                            SizedBox(width: 8),
                            Text(
                              '8 min read',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '3D Printed Organs:\nFrom Lab to Clinic',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'How bioprinting technology is moving beyond experimental scaffolds to functional, life-saving tissues.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            height: 1.4,
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
                  // Author row
                  Row(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'WRITTEN BY',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF9CA3AF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF3B82F6)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF3B82F6),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xFF8B5CF6),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Dr. Elena Rostova',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Imagine a future where organ waitlists are obsolete. Where a patient needing a new kidney simply provides a cell sample, and a bio-compatible replacement is printed on demand.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'This isn\'t science fiction anymore. While full organ replacement is still on the horizon, the stepping stones are being laid today with remarkable precision.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Current Successes section
                  _LeftBorderSection(label: 'Current Successes: Skin & Bone'),
                  const SizedBox(height: 12),

                  // Image card
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1618015359417-8e72a3ca8e21?w=600&auto=format&fit=crop',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 160,
                        color: const Color(0xFFE5E7EB),
                        child: const Center(
                          child: Icon(
                            Icons.image_outlined,
                            color: Color(0xFF9CA3AF),
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Figure 1: Osteo-inductive scaffolds for bone regeneration.',
                    style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
                  ),

                  const SizedBox(height: 12),
                  const Text(
                    'The most immediate applications are in simpler tissues. Bioprinted skin is already being used for burn victims, providing a graft that integrates faster and with less scarring than traditional methods. Similarly, 3D-printed bone scaffolds coated with stem cells are regenerating sections of bone lost to trauma.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Biotechnology Forecast timeline
                  const Text(
                    'BIOTECHNOLOGY FORECAST',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9CA3AF),
                      letterSpacing: 0.6,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _BiotechTimeline(),

                  const SizedBox(height: 20),

                  // The Complex Challenge
                  _LeftBorderSection(
                    label: 'The Complex Challenge:\nHearts & Lungs',
                  ),
                  const SizedBox(height: 12),

                  // Vascularization Hurdle card
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1559757175-0eb30cd8c063?w=200&auto=format&fit=crop',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              width: 60,
                              height: 60,
                              color: const Color(0xFF374151),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Vascularization Hurdle',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'The main obstacle isn\'t the organ shape, but the capillaries. Without a blood supply, cells in the center of a printed organ die within hours.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Researchers at Tel Aviv University successfully printed a mini-heart with blood vessels, but scaling this to human size requires printing billions of cells with microscopic precision. New techniques using \'ghost organs\'—decellularized animal organs used as a scaffold—show promise.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Doctor quote card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          '"We are moving from a reactive model of transplant medicine to a proactive, manufacturing-based approach."',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF374151),
                            fontStyle: FontStyle.italic,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 8),
                        const Text(
                          'Dr. Anthony Atala',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const Text(
                          'Director, Wake Forest Institute',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Ethical Considerations
                  _LeftBorderSection(label: 'Ethical Considerations'),
                  const SizedBox(height: 10),
                  const Text(
                    'As the technology matures, questions arise. Will these organs be available to all, or only the wealthy? Could this technology be used for enhancement rather than just replacement? These bio-ethical frameworks must be built alongside the biological scaffolds.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF374151),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Related Reading
                  const Text(
                    'Related Reading',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _RelatedCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=400&auto=format&fit=crop',
                          title: 'Robotic Surgery Precision',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _RelatedCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1518770660439-4636190af475?w=400&auto=format&fit=crop',
                          title: 'Smart Implants & Rejection',
                        ),
                      ),
                    ],
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

class _InnovationFeaturePill extends StatelessWidget {
  const _InnovationFeaturePill();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF22C55E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        'INNOVATION FEATURE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _LeftBorderSection extends StatelessWidget {
  const _LeftBorderSection({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(color: Color(0xFF3B82F6), width: 3)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFF111827),
          height: 1.3,
        ),
      ),
    );
  }
}

class _BiotechTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          _TimelineEvent(
            year: '2010',
            title: 'First Blood Vessel',
            desc: 'Organovo creates first 3D printed blood vessel.',
            dotColor: Color(0xFF9CA3AF),
          ),
          _TimelineConnector(),
          _TimelineEvent(
            year: '2018',
            title: 'Bio-ink Breakthrough',
            desc: 'Development of algae-based bio-inks.',
            dotColor: Color(0xFF9CA3AF),
          ),
          _TimelineConnector(),
          _TimelineEvent(
            year: '2023',
            title: 'Cardiac Tissue',
            desc: 'Living heart patch successfully transplanted.',
            dotColor: Color(0xFF3B82F6),
            isCurrent: true,
          ),
        ],
      ),
    );
  }
}

class _TimelineEvent extends StatelessWidget {
  const _TimelineEvent({
    required this.year,
    required this.title,
    required this.desc,
    required this.dotColor,
    this.isCurrent = false,
  });
  final String year;
  final String title;
  final String desc;
  final Color dotColor;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
          ),
          const SizedBox(height: 6),
          Text(
            year,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: isCurrent
                  ? const Color(0xFF3B82F6)
                  : const Color(0xFF9CA3AF),
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
          const SizedBox(height: 2),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF6B7280),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _TimelineConnector extends StatelessWidget {
  const _TimelineConnector();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 2,
      margin: const EdgeInsets.only(bottom: 80),
      color: const Color(0xFFE5E7EB),
    );
  }
}

class _RelatedCard extends StatelessWidget {
  const _RelatedCard({required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                Container(height: 100, color: const Color(0xFF1E293B)),
          ),
          Container(
            height: 100,
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
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
