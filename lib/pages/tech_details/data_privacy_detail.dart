import 'package:flutter/material.dart';

class DataPrivacyDetail extends StatelessWidget {
  const DataPrivacyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header gradient
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(24, 32, 24, 36),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF1E3A5F), Color(0xFF1E293B)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          // Shield icon in diamond
                          Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              color: const Color(0xFF3B82F6),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Icon(
                              Icons.shield_outlined,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Military-Grade Security',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Your health data is protected by the most advanced encryption protocols available today.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ENCRYPTION STANDARDS
                          Row(
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF3B82F6),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'ENCRYPTION STANDARDS',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF6B7280),
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          const _EncryptionCard(
                            icon: Icons.enhanced_encryption_outlined,
                            iconColor: Color(0xFF3B82F6),
                            title: 'AES-256 Bit Encryption',
                            desc:
                                'The same encryption standard used by banks and governments to secure top-secret information.',
                          ),
                          const SizedBox(height: 10),
                          const _EncryptionCard(
                            icon: Icons.lock_clock_outlined,
                            iconColor: Color(0xFF22C55E),
                            title: 'End-to-End Vaulting',
                            desc:
                                'Data is encrypted on your device before it ever touches our servers. Only you hold the keys.',
                          ),
                          const SizedBox(height: 10),
                          const _EncryptionCard(
                            icon: Icons.visibility_off_outlined,
                            iconColor: Color(0xFF8B5CF6),
                            title: 'Zero-Knowledge Architecture',
                            desc:
                                'We cannot access or sell your personal health data. Your privacy is mathematically guaranteed.',
                          ),

                          const SizedBox(height: 24),

                          // GLOBAL COMPLIANCE
                          Row(
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF3B82F6),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'GLOBAL COMPLIANCE',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF6B7280),
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                          Row(
                            children: [
                              Expanded(
                                child: _ComplianceBadge(
                                  icon: Icons.verified_user_outlined,
                                  line1: 'HIPAA',
                                  line2: 'Compliant',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: _ComplianceBadge(
                                  icon: Icons.language_outlined,
                                  line1: 'GDPR',
                                  line2: 'Ready',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: _ComplianceBadge(
                                  icon: Icons.security_outlined,
                                  line1: 'ISO',
                                  line2: '27001',
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Detailed Documentation card
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Detailed Documentation',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF111827),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Download Security Whitepaper ↓',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF3B82F6),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF6FF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.description_outlined,
                                    color: Color(0xFF3B82F6),
                                    size: 22,
                                  ),
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
          ],
        ),
      ),
    );
  }
}

class _EncryptionCard extends StatelessWidget {
  const _EncryptionCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.desc,
  });
  final IconData icon;
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
          Icon(icon, color: iconColor, size: 22),
          const SizedBox(width: 12),
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
                    fontSize: 13,
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

class _ComplianceBadge extends StatelessWidget {
  const _ComplianceBadge({
    required this.icon,
    required this.line1,
    required this.line2,
  });
  final IconData icon;
  final String line1;
  final String line2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF3B82F6), size: 24),
          const SizedBox(height: 6),
          Text(
            line1,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          Text(
            line2,
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
        ],
      ),
    );
  }
}
