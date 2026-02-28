import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  static const routeName = '/terms-conditions';

  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF6FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Color(0xFF2196F3),
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Last Updated',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'October 24, 2025',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2196F3),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _TermSection(
                number: '1',
                title: 'Acceptance of Terms',
                content:
                    'By downloading, installing, or using the CareTag mobile application ("App"), you agree to be bound by these Terms and Conditions. If you do not agree to these terms, please do not use the App. These terms apply to all visitors, users, and others who access or use the Service.',
              ),
              const SizedBox(height: 20),
              _TermSection(
                number: '2',
                title: 'User Responsibilities',
                content:
                    'You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account or password.',
                subItems: [
                  'You must be at least 18 years old to use this App.',
                  'You must provide accurate and complete information.',
                  'You may not use the App for any illegal or unauthorized purpose.',
                ],
              ),
              const SizedBox(height: 20),
              _TermSection(
                number: '3',
                title: 'Privacy & Data Usage',
                content:
                    'Your privacy is important to us. CareTag collects and uses personal data in accordance with our Privacy Policy. By using the App, you consent to such processing and you warrant that all data provided by you is accurate. We implement robust security measures to protect your health data.',
              ),
              const SizedBox(height: 20),
              _TermSection(
                number: '4',
                title: 'Medical Disclaimer',
                content:
                    'The CareTag App provides information for educational and tracking purposes only. It is not intended to be a substitute for professional medical advice, diagnosis, or treatment. Always seek the advice of your physician or other qualified health provider with any questions you may have regarding a medical condition.',
              ),
              const SizedBox(height: 20),
              _TermSection(
                number: '5',
                title: 'Modifications to Service',
                content:
                    'CareTag reserves the right to modify or discontinue, temporarily or permanently, the Service (or any part thereof) with or without notice. You agree that CareTag shall not be liable to you or to any third party for any modification, suspension, or discontinuance of the Service.',
              ),
              const SizedBox(height: 20),
              _TermSection(
                number: '6',
                title: 'Termination',
                content:
                    'We may terminate or suspend access to our Service immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.',
              ),
              const SizedBox(height: 40),
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.support_agent, size: 18),
                  label: const Text('Contact Legal Support'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF2196F3),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _TermSection extends StatelessWidget {
  final String number;
  final String title;
  final String content;
  final List<String>? subItems;

  const _TermSection({
    required this.number,
    required this.title,
    required this.content,
    this.subItems,
  });

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
                color: const Color(0xFFEFF6FF),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  number,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2196F3),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          content,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF4B5563),
            height: 1.6,
          ),
        ),
        if (subItems != null) ...[
          const SizedBox(height: 12),
          ...subItems!.map(
            (item) => Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(fontSize: 14, color: Color(0xFF4B5563)),
                  ),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4B5563),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }
}
