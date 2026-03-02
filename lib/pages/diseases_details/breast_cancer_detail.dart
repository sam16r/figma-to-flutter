import 'package:flutter/material.dart';

class BreastCancerDetail extends StatelessWidget {
  const BreastCancerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Hero SliverAppBar
          SliverAppBar(
            expandedHeight: 260,
            pinned: true,
            backgroundColor: const Color(0xFFE91E8C),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.white24,
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
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.share, color: Colors.white, size: 20),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1631217868264-e5b90bb7e133?w=800&auto=format&fit=crop',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        Container(color: const Color(0xFFE91E8C)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          const Color(0xFFAD1457).withValues(alpha: 0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  // Badge row at bottom
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEC4899),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'AWARENESS MONTH',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Early Detection\nSaves Lives',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Understanding the signs and maintaining a regular\nscreening schedule is your best defense.',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Body
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Know the Signs card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.04),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
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
                                Icons.remove_red_eye_outlined,
                                color: Color(0xFFEC4899),
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Know the Signs',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Consult a doctor if you notice any of these symptoms persisting.',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                        const SizedBox(height: 12),
                        _SignItem(
                          title: 'New lump or mass',
                          subtitle: 'Painless, hard, irregular edges',
                        ),
                        _SignItem(
                          title: 'Skin changes',
                          subtitle: 'Dimpling, puckering, or redness',
                        ),
                        _SignItem(
                          title: 'Pain or discharge',
                          subtitle: 'Unusual pain or fluid from nipple',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Screening Schedule
                  const Text(
                    'Screening Schedule',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Column(
                      children: [
                        _ScreeningRow(
                          isHeader: true,
                          ageGroup: 'AGE\nGROUP',
                          recommendation: 'RECOMMENDATION',
                        ),
                        const Divider(height: 1, color: Color(0xFFE5E7EB)),
                        _ScreeningRow(
                          ageGroup: '40 - 44',
                          recommendation: 'Option to start annual screening',
                        ),
                        const Divider(height: 1, color: Color(0xFFE5E7EB)),
                        _ScreeningRow(
                          ageGroup: '45 - 54',
                          recommendation: 'Annual mammograms recommended',
                        ),
                        const Divider(height: 1, color: Color(0xFFE5E7EB)),
                        _ScreeningRow(
                          ageGroup: '55 +',
                          recommendation: 'Mammograms every 2 years',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    '*General guidelines. Consult your physician for personal advice.',
                    style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
                  ),

                  const SizedBox(height: 24),

                  // Self-Exam Guide
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Self-Exam Guide',
                        style: TextStyle(
                          fontSize: 18,
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
                          color: const Color(0xFFDBEAFE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'MONTHLY',
                          style: TextStyle(
                            color: Color(0xFF3B82F6),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  _ExamStep(
                    number: 1,
                    title: 'Visual Inspection',
                    description:
                        'Stand before a mirror with hands on hips. Look for visual changes in shape or contour.',
                    imageUrl:
                        'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=400&auto=format&fit=crop',
                  ),
                  const SizedBox(height: 14),
                  _ExamStep(
                    number: 2,
                    title: 'Manual Check (Standing)',
                    description:
                        'Raise one arm. Use pads of fingers to feel for lumps in a circular motion.',
                  ),
                  const SizedBox(height: 14),
                  _ExamStep(
                    number: 3,
                    title: 'Manual Check (Lying Down)',
                    description:
                        'Lie down to spread tissue evenly. Repeat the circular motion check thoroughly.',
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

class _SignItem extends StatelessWidget {
  const _SignItem({required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Color(0xFFEC4899), size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScreeningRow extends StatelessWidget {
  const _ScreeningRow({
    required this.ageGroup,
    required this.recommendation,
    this.isHeader = false,
  });
  final String ageGroup;
  final String recommendation;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    final textStyle = isHeader
        ? const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: Color(0xFF9CA3AF),
            letterSpacing: 0.5,
          )
        : const TextStyle(fontSize: 14, color: Color(0xFF111827));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          SizedBox(width: 80, child: Text(ageGroup, style: textStyle)),
          Expanded(child: Text(recommendation, style: textStyle)),
        ],
      ),
    );
  }
}

class _ExamStep extends StatelessWidget {
  const _ExamStep({
    required this.number,
    required this.title,
    required this.description,
    this.imageUrl,
  });
  final int number;
  final String title;
  final String description;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFEC4899), width: 2),
              ),
              child: Center(
                child: Text(
                  '$number',
                  style: const TextStyle(
                    color: Color(0xFFEC4899),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
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
                    description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (imageUrl != null) ...[
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl!,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                height: 120,
                color: const Color(0xFFF3F4F6),
                child: const Icon(
                  Icons.image_outlined,
                  color: Color(0xFF9CA3AF),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
