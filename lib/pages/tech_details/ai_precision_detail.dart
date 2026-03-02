import 'package:flutter/material.dart';

class AiPrecisionDetail extends StatelessWidget {
  const AiPrecisionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Simple top bar
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFF374151),
                      size: 22,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                  const SizedBox(width: 14),
                  const Icon(
                    Icons.share_outlined,
                    color: Color(0xFF6B7280),
                    size: 22,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDF2F8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'DATA SCIENCE',
                        style: TextStyle(
                          color: Color(0xFFDB2777),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Understanding AI Precision in Diagnostics',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'How neural networks are outperforming traditional methods in specific medical fields.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Accuracy Comparison chart
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
                                'ACCURACY COMPARISON (%)',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF6B7280),
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF3B82F6),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    'AI Model',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE5E7EB),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    'Traditional',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          _AccuracyRow(
                            specialty: 'Radiology',
                            aiValue: 0.992,
                            tradValue: 0.885,
                            aiLabel: '99.2%',
                            tradLabel: '88.5%',
                          ),
                          const SizedBox(height: 12),
                          _AccuracyRow(
                            specialty: 'Pathology',
                            aiValue: 0.978,
                            tradValue: 0.921,
                            aiLabel: '97.8%',
                            tradLabel: '92.1%',
                          ),
                          const SizedBox(height: 12),
                          _AccuracyRow(
                            specialty: 'Dermatology',
                            aiValue: 0.965,
                            tradValue: 0.984,
                            aiLabel: '96.5%',
                            tradLabel: '98.4%',
                          ),
                          const SizedBox(height: 12),
                          _AccuracyRow(
                            specialty: 'Cardiology',
                            aiValue: 0.981,
                            tradValue: 0.910,
                            aiLabel: '98.1%',
                            tradLabel: '91.0%',
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Source: Global MedTech Benchmark 2024',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF9CA3AF),
                                ),
                              ),
                              GestureDetector(
                                child: const Text(
                                  'View Full Report',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF3B82F6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Certification
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFF6FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.verified_outlined,
                              color: Color(0xFF3B82F6),
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CERTIFICATION',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF9CA3AF),
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Medical AI Standard - Level 4 Certified',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // 3 section items
                    const _AiSection(
                      icon: Icons.hub_outlined,
                      iconColor: Color(0xFF3B82F6),
                      title: 'Neural Network Training',
                      body:
                          'Our AI models utilize deep convolutional neural networks (CNNs) trained on over 50 million validated medical images. This allows the system to identify micro-patterns invisible to the human eye.',
                    ),
                    const SizedBox(height: 16),
                    const _AiSection(
                      icon: Icons.people_outline,
                      iconColor: Color(0xFF22C55E),
                      title: 'Diverse Data Sets',
                      body:
                          'To eliminate algorithmic bias, training data is sourced from 120 partner hospitals across 45 countries, ensuring accuracy across different demographics, genetic backgrounds, and equipment types.',
                    ),
                    const SizedBox(height: 16),
                    const _AiSection(
                      icon: Icons.close_outlined,
                      iconColor: Color(0xFFEF4444),
                      title: 'False Positive Mitigation',
                      body:
                          'A secondary "Validator Model" runs in parallel, specifically trained to challenge the primary diagnosis. This adversarial approach reduces false positives by 40% compared to single-model systems.',
                    ),

                    const SizedBox(height: 24),

                    // Download button
                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: const Color(0xFF111827),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Download Technical Whitepaper',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccuracyRow extends StatelessWidget {
  const _AccuracyRow({
    required this.specialty,
    required this.aiValue,
    required this.tradValue,
    required this.aiLabel,
    required this.tradLabel,
  });
  final String specialty;
  final double aiValue;
  final double tradValue;
  final String aiLabel;
  final String tradLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              specialty,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF374151),
              ),
            ),
            Row(
              children: [
                Text(
                  aiLabel,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3B82F6),
                  ),
                ),
                const Text(
                  ' vs ',
                  style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
                ),
                Text(
                  tradLabel,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 4),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: tradValue,
                minHeight: 6,
                backgroundColor: const Color(0xFFE5E7EB),
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFFE5E7EB),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: aiValue,
                minHeight: 6,
                backgroundColor: Colors.transparent,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFF3B82F6),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AiSection extends StatelessWidget {
  const _AiSection({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.body,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 22),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                body,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF374151),
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
