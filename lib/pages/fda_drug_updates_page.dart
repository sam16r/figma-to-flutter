import 'package:flutter/material.dart';

class FdaDrugUpdatesPage extends StatelessWidget {
  const FdaDrugUpdatesPage({super.key});

  static const routeName = '/fda-drug-updates';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Blue/purple gradient header
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3B82F6), Color(0xFF7C3AED)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 8,
              left: 16,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'FDA Drug Approvals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.25),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'UPDATES',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Text(
                  'Latest Drug Approvals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Tracking new FDA-approved medications and their uses.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _DrugApprovalCard(
                    name: 'Lecanemab (Leqembi)',
                    specialty: 'Neurology',
                    specialtyColor: Color(0xFF6366F1),
                    specialtyBg: Color(0xFFEEF2FF),
                    imageUrl:
                        'https://images.unsplash.com/photo-1576319155264-99536e0be1ee?w=400&auto=format&fit=crop',
                    indication: "Alzheimer's Disease",
                    mechanism: 'Anti-amyloid monoclonal antibody',
                    approvalType: 'Full Approval',
                    approvalColor: Color(0xFF22C55E),
                    approvalBg: Color(0xFFF0FDF4),
                    details: [
                      _DetailItem(label: 'Approval Date', value: 'Jul 2023'),
                      _DetailItem(
                        label: 'Administration',
                        value: 'IV infusion, bi-weekly',
                      ),
                      _DetailItem(
                        label: 'Key Benefit',
                        value: '27% slower progression',
                      ),
                      _DetailItem(
                        label: 'Eligible Patients',
                        value: 'Early-stage Alzheimer\'s',
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  const _DrugApprovalCard(
                    name: 'Ruxolitinib (Opzelura)',
                    specialty: 'Dermatology',
                    specialtyColor: Color(0xFFDB2777),
                    specialtyBg: Color(0xFFFDF2F8),
                    imageUrl:
                        'https://images.unsplash.com/photo-1584820927498-cfe5211fd8bf?w=400&auto=format&fit=crop',
                    indication: 'Atopic Dermatitis (Eczema)',
                    mechanism: 'JAK1/JAK2 inhibitor (topical cream)',
                    approvalType: 'Expanded Use',
                    approvalColor: Color(0xFFDB2777),
                    approvalBg: Color(0xFFFDF2F8),
                    details: [
                      _DetailItem(label: 'Approval Date', value: 'Sep 2022'),
                      _DetailItem(
                        label: 'Administration',
                        value: 'Topical, twice daily',
                      ),
                      _DetailItem(
                        label: 'Key Benefit',
                        value: 'Reduces itch & inflammation',
                      ),
                      _DetailItem(
                        label: 'Age Range',
                        value: '12 years and older',
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  const _DrugApprovalCard(
                    name: 'Mounjaro (Tirzepatide)',
                    specialty: 'Endocrine',
                    specialtyColor: Color(0xFF0D9488),
                    specialtyBg: Color(0xFFF0FDFA),
                    imageUrl:
                        'https://images.unsplash.com/photo-1579684385127-1ef15d508118?w=400&auto=format&fit=crop',
                    indication: 'Type 2 Diabetes Management',
                    mechanism: 'Dual GIP and GLP-1 receptor agonist',
                    approvalType: 'Priority Review',
                    approvalColor: Color(0xFF0D9488),
                    approvalBg: Color(0xFFF0FDFA),
                    details: [
                      _DetailItem(label: 'Approval Date', value: 'May 2022'),
                      _DetailItem(
                        label: 'Administration',
                        value: 'Weekly injection',
                      ),
                      _DetailItem(
                        label: 'Key Benefit',
                        value: 'Up to 22% body weight loss',
                      ),
                      _DetailItem(
                        label: 'Also Studied For',
                        value: 'Obesity (Zepbound)',
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Ask a Pharmacist promo
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/pharmacist-qa'),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
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
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Have questions about these drugs?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Ask a pharmacist →',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white54,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrugApprovalCard extends StatelessWidget {
  const _DrugApprovalCard({
    required this.name,
    required this.specialty,
    required this.specialtyColor,
    required this.specialtyBg,
    required this.imageUrl,
    required this.indication,
    required this.mechanism,
    required this.approvalType,
    required this.approvalColor,
    required this.approvalBg,
    required this.details,
  });
  final String name;
  final String specialty;
  final Color specialtyColor;
  final Color specialtyBg;
  final String imageUrl;
  final String indication;
  final String mechanism;
  final String approvalType;
  final Color approvalColor;
  final Color approvalBg;
  final List<_DetailItem> details;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image header
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
            child: Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 110,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(height: 110, color: const Color(0xFFE5E7EB)),
                ),
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.5),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 12,
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: specialtyBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      specialty,
                      style: TextStyle(
                        color: specialtyColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
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
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            indication,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            mechanism,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6B7280),
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: approvalBg,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        approvalType,
                        style: TextStyle(
                          color: approvalColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: details.map((d) {
                      final isLast = d == details.last;
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                d.label,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF9CA3AF),
                                ),
                              ),
                              Text(
                                d.value,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          if (!isLast) ...[
                            const SizedBox(height: 6),
                            const Divider(height: 1),
                            const SizedBox(height: 6),
                          ],
                        ],
                      );
                    }).toList(),
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

class _DetailItem {
  const _DetailItem({required this.label, required this.value});
  final String label;
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _DetailItem && other.label == label && other.value == value);

  @override
  int get hashCode => Object.hash(label, value);
}
