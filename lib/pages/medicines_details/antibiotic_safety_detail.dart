import 'package:flutter/material.dart';

class AntibioticSafetyDetail extends StatelessWidget {
  const AntibioticSafetyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Blue/indigo gradient header
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3B82F6), Color(0xFF6366F1)],
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
                        'Antibiotic Safety Portal',
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
                        'SAFETY FIRST',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Common Antibiotics:\nDos and Don'ts",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Key guidelines for safe and effective antibiotic use.',
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
                  // Scan Medication card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.qr_code_scanner,
                            color: Color(0xFF3B82F6),
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 14),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Scan Your Medication',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF111827),
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Check interactions and instructions instantly',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3B82F6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Scan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Core Safety Rules — 2 column
                  const Text(
                    'Core Safety Rules',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0FDF4),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFBBF7D0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF22C55E),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "THE DO'S",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              _SafetyRuleItem(
                                icon: Icons.check_circle,
                                color: const Color(0xFF22C55E),
                                text: 'Finish the full course',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.check_circle,
                                color: const Color(0xFF22C55E),
                                text: 'Take at consistent times',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.check_circle,
                                color: const Color(0xFF22C55E),
                                text: 'Stay well hydrated',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.check_circle,
                                color: const Color(0xFF22C55E),
                                text: 'Store as directed',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF1F2),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFFFECACA)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFEF4444),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "THE DON'TS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              _SafetyRuleItem(
                                icon: Icons.cancel,
                                color: const Color(0xFFEF4444),
                                text: 'Skip doses',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.cancel,
                                color: const Color(0xFFEF4444),
                                text: 'Share with others',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.cancel,
                                color: const Color(0xFFEF4444),
                                text: 'Save for later use',
                              ),
                              const SizedBox(height: 8),
                              _SafetyRuleItem(
                                icon: Icons.cancel,
                                color: const Color(0xFFEF4444),
                                text: 'Mix with alcohol',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Common Interactions
                  const Text(
                    'Common Interactions',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Search bar
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Color(0xFF9CA3AF), size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Search antibiotic or food...',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: const Column(
                      children: [
                        _InteractionRow(
                          antibiotic: 'Amoxicillin',
                          food: 'Dairy products',
                          risk: 'Low',
                          riskColor: Color(0xFF22C55E),
                          riskBg: Color(0xFFF0FDF4),
                        ),
                        Divider(height: 1),
                        _InteractionRow(
                          antibiotic: 'Ciprofloxacin',
                          food: 'Calcium supplements',
                          risk: 'High',
                          riskColor: Color(0xFFEF4444),
                          riskBg: Color(0xFFFFF1F2),
                        ),
                        Divider(height: 1),
                        _InteractionRow(
                          antibiotic: 'Metronidazole',
                          food: 'Alcohol',
                          risk: 'Severe',
                          riskColor: Color(0xFF7C3AED),
                          riskBg: Color(0xFFF5F3FF),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // FAQ
                  const Text(
                    'Frequently Asked Questions',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF111827),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: const Column(
                      children: [
                        _FaqItem(
                          question: 'What happens if I miss a dose?',
                          answer:
                              'Take it as soon as you remember. If it\'s almost time for your next dose, skip the missed one — never double up. Missing a dose can allow bacteria to develop resistance.',
                        ),
                        Divider(height: 1),
                        _FaqItem(
                          question:
                              'Can I stop taking antibiotics when I feel better?',
                          answer:
                              'No. Always complete the full course even if symptoms improve. Stopping early may allow the infection to return, often with antibiotic-resistant bacteria.',
                        ),
                      ],
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

class _SafetyRuleItem extends StatelessWidget {
  const _SafetyRuleItem({
    required this.icon,
    required this.color,
    required this.text,
  });
  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 14),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF374151),
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}

class _InteractionRow extends StatelessWidget {
  const _InteractionRow({
    required this.antibiotic,
    required this.food,
    required this.risk,
    required this.riskColor,
    required this.riskBg,
  });
  final String antibiotic;
  final String food;
  final String risk;
  final Color riskColor;
  final Color riskBg;

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
                  antibiotic,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  food,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: riskBg,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              risk,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: riskColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FaqItem extends StatelessWidget {
  const _FaqItem({required this.question, required this.answer});
  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFFEFF6FF),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'Q',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF3B82F6),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  question,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF6B7280),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
