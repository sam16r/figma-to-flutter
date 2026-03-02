import 'package:flutter/material.dart';
import '../models/news_article.dart';

class MedicinesTreatmentsContent extends StatelessWidget {
  const MedicinesTreatmentsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final mt1 = medicinesArticles.firstWhere((a) => a.id == 'mt1');
    final mt2 = medicinesArticles.firstWhere((a) => a.id == 'mt2');
    final mt3 = medicinesArticles.firstWhere((a) => a.id == 'mt3');
    final mt4 = medicinesArticles.firstWhere((a) => a.id == 'mt4');
    final mt5 = medicinesArticles.firstWhere((a) => a.id == 'mt5');
    final mt6 = medicinesArticles.firstWhere((a) => a.id == 'mt6');
    final mt7 = medicinesArticles.firstWhere((a) => a.id == 'mt7');

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Featured article card
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medicines-detail',
              arguments: {'article': mt1},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          mt1.imageUrl,
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: 180,
                            color: const Color(0xFF1E293B),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mt1.title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          mt1.subtitle,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 13,
                              color: Color(0xFF9CA3AF),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              mt1.timeAgo,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Read Full Story →',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF3B82F6),
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

          // 2. Research card (mt2) — horizontal layout
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medicines-detail',
              arguments: {'article': mt2},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 14, 20, 0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCFBF1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                'RESEARCH',
                                style: TextStyle(
                                  color: Color(0xFF0D9488),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Icon(
                              Icons.circle,
                              size: 4,
                              color: Color(0xFF9CA3AF),
                            ),
                            const SizedBox(width: 6),
                            const Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 11,
                                  color: Color(0xFF9CA3AF),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  '4 min read',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF9CA3AF),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          mt2.title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF111827),
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          mt2.subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      mt2.imageUrl,
                      width: 72,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        width: 72,
                        height: 80,
                        color: const Color(0xFFE5E7EB),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 3. Physical Therapy card (mt3) — full-width image with guide badge
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medicines-detail',
              arguments: {'article': mt3},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 14, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(13),
                    ),
                    child: Stack(
                      children: [
                        Image.network(
                          mt3.imageUrl,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: 160,
                            color: const Color(0xFFE5E7EB),
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3B82F6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.menu_book_outlined,
                                  color: Colors.white,
                                  size: 11,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Guide',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mt3.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          mt3.subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 24,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: const Color(0xFF6366F1),
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: const Color(0xFF0D9488),
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Reviewed by Specialists',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF6B7280),
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

          // 4. Antibiotics safety card (mt4)
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/medicines-detail',
              arguments: {'article': mt4},
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 14, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFBEB),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(13),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF59E0B),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'SAFETY FIRST',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Text('💊', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Common Antibiotics: Dos and Don'ts",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 12),
                        _SafetyItem(
                          icon: Icons.check_circle,
                          iconColor: const Color(0xFF22C55E),
                          prefix: 'Do:',
                          text:
                              ' Finish the entire prescribed course, even if you feel better.',
                        ),
                        const SizedBox(height: 6),
                        _SafetyItem(
                          icon: Icons.cancel,
                          iconColor: const Color(0xFFEF4444),
                          prefix: "Don't:",
                          text:
                              ' Save leftovers for the next time you get sick.',
                        ),
                        const SizedBox(height: 6),
                        _SafetyItem(
                          icon: Icons.info_outline,
                          iconColor: const Color(0xFF3B82F6),
                          prefix: '',
                          text:
                              'Some antibiotics interact with dairy or alcohol. Check your label.',
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            'View Full Interaction List',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 5. Treatment Innovations — horizontal scroll
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 12),
            child: Text(
              'Treatment Innovations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFF111827),
              ),
            ),
          ),
          SizedBox(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _TreatmentCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=400&auto=format&fit=crop',
                  badge: 'Tech',
                  badgeColor: const Color(0xFF22C55E),
                  title: 'Robotic Surgery',
                  subtitle: 'High-precision minimally\ninvasive techniques.',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medicines-detail',
                    arguments: {'article': mt5},
                  ),
                ),
                const SizedBox(width: 12),
                _TreatmentCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1532187863486-abf9dbad1b69?w=400&auto=format&fit=crop',
                  badge: 'Genetics',
                  badgeColor: const Color(0xFF0D9488),
                  title: 'Gene Therapy',
                  subtitle: 'Targeted treatments for\nhereditary conditions.',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medicines-detail',
                    arguments: {'article': mt6},
                  ),
                ),
                const SizedBox(width: 12),
                _TreatmentCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1518770660439-4636190af475?w=400&auto=format&fit=crop',
                  badge: 'IoT',
                  badgeColor: const Color(0xFF3B82F6),
                  title: 'Smart Implants',
                  subtitle: 'Real-time vitals monitoring\nfrom within.',
                  onTap: () => Navigator.pushNamed(
                    context,
                    '/medicines-detail',
                    arguments: {'article': mt7},
                  ),
                ),
              ],
            ),
          ),

          // 6. Latest Drug Approvals
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                const Text(
                  'Latest Drug Approvals',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/fda-drug-updates'),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDCFCE7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'FDA UPDATE',
                      style: TextStyle(
                        color: Color(0xFF16A34A),
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/fda-drug-updates'),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 12, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Column(
                children: const [
                  _DrugRow(
                    name: 'Lecanemab (Leqembi)',
                    subtitle: "Alzheimer's slows progression",
                    specialty: 'Neurology',
                    specialtyColor: Color(0xFF6366F1),
                    specialtyBg: Color(0xFFEEF2FF),
                  ),
                  Divider(height: 1),
                  _DrugRow(
                    name: 'Ruxolitinib (Opzelura)',
                    subtitle: 'New Eczema cream formulation',
                    specialty: 'Dermatology',
                    specialtyColor: Color(0xFFDB2777),
                    specialtyBg: Color(0xFFFDF2F8),
                  ),
                  Divider(height: 1),
                  _DrugRow(
                    name: 'Mounjaro (Tirzepatide)',
                    subtitle: 'Type 2 Diabetes management',
                    specialty: 'Endocrine',
                    specialtyColor: Color(0xFF0D9488),
                    specialtyBg: Color(0xFFF0FDFA),
                  ),
                ],
              ),
            ),
          ),

          // 7. Ask a Pharmacist
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/pharmacist-qa'),
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF3B82F6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Ask a Pharmacist',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'EXPERT Q&A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '"Why is hydration important when taking new medication?"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Read Answer',
                      style: TextStyle(
                        color: Color(0xFF3B82F6),
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
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

class _SafetyItem extends StatelessWidget {
  const _SafetyItem({
    required this.icon,
    required this.iconColor,
    required this.prefix,
    required this.text,
  });
  final IconData icon;
  final Color iconColor;
  final String prefix;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 16),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF374151),
                height: 1.4,
              ),
              children: [
                if (prefix.isNotEmpty)
                  TextSpan(
                    text: prefix,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                TextSpan(text: text),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TreatmentCard extends StatelessWidget {
  const _TreatmentCard({
    required this.imageUrl,
    required this.badge,
    required this.badgeColor,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String imageUrl;
  final String badge;
  final Color badgeColor;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: 140,
              height: 175,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 140,
                height: 175,
                color: const Color(0xFF1E293B),
              ),
            ),
            Container(
              width: 140,
              height: 175,
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
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  badge,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrugRow extends StatelessWidget {
  const _DrugRow({
    required this.name,
    required this.subtitle,
    required this.specialty,
    required this.specialtyColor,
    required this.specialtyBg,
  });
  final String name;
  final String subtitle;
  final String specialty;
  final Color specialtyColor;
  final Color specialtyBg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: specialtyBg,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              specialty,
              style: TextStyle(
                color: specialtyColor,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
