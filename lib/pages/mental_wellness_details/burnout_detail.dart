import 'package:flutter/material.dart';

class BurnoutDetail extends StatelessWidget {
  const BurnoutDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top bar
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, size: 22),
                    ),
                    const Spacer(),
                    const Icon(Icons.bookmark_border, size: 22),
                    const SizedBox(width: 12),
                    const Icon(Icons.share, size: 22),
                  ],
                ),
              ),

              // Hero image
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://images.unsplash.com/photo-1499209974431-9dddcece7f88?w=800&auto=format&fit=crop',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: const Color(0xFFE5E7EB)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tag + read time
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEE2E2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'SELF CARE',
                            style: TextStyle(
                              color: Color(0xFFEF4444),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '• 5 min read',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9CA3AF),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Burnout: Recognizing the Early Signs',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF111827),
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Author
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFF6366F1),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Elena Rossi',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF111827),
                              ),
                            ),
                            Text(
                              'Clinical Psychologist',
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      'Feeling exhausted isn\'t the only symptom. Burnout is a state of emotional, physical, and mental exhaustion caused by excessive and prolonged stress. It occurs when you feel overwhelmed, emotionally drained, and unable to meet constant demands.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF374151),
                        height: 1.7,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Do you feel these signs?
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
                            children: const [
                              Icon(
                                Icons.checklist_outlined,
                                color: Color(0xFF6366F1),
                                size: 18,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Do you feel these signs?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF111827),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 14),
                          const _SignItem(
                            title: 'Chronic Fatigue',
                            desc: 'Feeling tired and drained most of the time.',
                          ),
                          const SizedBox(height: 12),
                          const _SignItem(
                            title: 'Increased Irritability',
                            desc: 'Less patience with others and yourself.',
                          ),
                          const SizedBox(height: 12),
                          const _SignItem(
                            title: 'Cynicism & Detachment',
                            desc: 'Feeling negative or numb about your work.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Burnout vs Stress table
                    const Text(
                      'Burnout vs. Stress',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE5E7EB)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          // Header row
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 10,
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFFF9FAFB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(11),
                                topRight: Radius.circular(11),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Stress',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFFF97316),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Burnout',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF6366F1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(height: 1),
                          const _CompareRow(
                            left: 'Characterized by\nover-engagement',
                            right: 'Characterized by\ndisengagement',
                            leftBold: 'over-engagement',
                            rightBold: 'disengagement',
                          ),
                          const Divider(height: 1),
                          const _CompareRow(
                            left: 'Emotions become\noveractive',
                            right: 'Emotions become\nblunted',
                            leftBold: 'overactive',
                            rightBold: 'blunted',
                          ),
                          const Divider(height: 1),
                          const _CompareRow(
                            left: 'Produces\nurgency',
                            right: 'Produces\nhelplessness',
                            leftBold: 'urgency',
                            rightBold: 'helplessness',
                          ),
                          const Divider(height: 1),
                          const _CompareRow(
                            left: 'Primary damage is\nphysical',
                            right: 'Primary damage is\nemotional',
                            leftBold: 'physical',
                            rightBold: 'emotional',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // First Steps to Recovery
                    const Text(
                      'First Steps to Recovery',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 12),

                    const _RecoveryStep(
                      number: '1.',
                      title: 'Prioritize Sleep',
                      desc:
                          'Aim for 7-9 hours of quality sleep. It restores your neurochemistry.',
                      borderColor: Color(0xFF6366F1),
                      bgColor: Color(0xFFF0F4FF),
                    ),
                    const SizedBox(height: 10),
                    const _RecoveryStep(
                      number: '2.',
                      title: 'Set Boundaries',
                      desc:
                          'Learn to say \'no\' to new commitments. Protect your downtime fiercely.',
                      borderColor: Color(0xFF22C55E),
                      bgColor: Color(0xFFF0FDF4),
                    ),
                    const SizedBox(height: 10),
                    const _RecoveryStep(
                      number: '3.',
                      title: 'Reconnect',
                      desc:
                          'Spend time with people who don\'t need anything from you other than your company.',
                      borderColor: Color(0xFF0D9488),
                      bgColor: Color(0xFFF0FDFA),
                    ),

                    const SizedBox(height: 24),

                    // Closing quote
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '\u201cRest is not idleness, and to lie sometimes on the grass under trees on a summer\'s day... is by no means a waste of time.\u201d\n\n— John Lubbock',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF374151),
                          height: 1.6,
                        ),
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
    );
  }
}

class _SignItem extends StatelessWidget {
  const _SignItem({required this.title, required this.desc});
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFD1D5DB), width: 2),
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
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                desc,
                style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CompareRow extends StatelessWidget {
  const _CompareRow({
    required this.left,
    required this.right,
    required this.leftBold,
    required this.rightBold,
  });
  final String left;
  final String right;
  final String leftBold;
  final String rightBold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _buildCell(left, leftBold)),
          Expanded(child: _buildCell(right, rightBold)),
        ],
      ),
    );
  }

  Widget _buildCell(String text, String bold) {
    final parts = text.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          parts[0],
          style: const TextStyle(fontSize: 13, color: Color(0xFF374151)),
        ),
        if (parts.length > 1)
          Text(
            parts[1],
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
      ],
    );
  }
}

class _RecoveryStep extends StatelessWidget {
  const _RecoveryStep({
    required this.number,
    required this.title,
    required this.desc,
    required this.borderColor,
    required this.bgColor,
  });
  final String number;
  final String title;
  final String desc;
  final Color borderColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border(left: BorderSide(color: borderColor, width: 4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number $title',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: borderColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF374151),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
