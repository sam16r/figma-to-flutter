import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  static const routeName = '/transaction-history';

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
          'Transaction History',
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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF9FAFB),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDCEEFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.calendar_today,
                    size: 20,
                    color: Color(0xFF1E63F4),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'DATE RANGE',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF9CA3AF),
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '3 ct 1 - 3ct 31, 2023',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E63F4),
                  ),
                ),
              ],
            ),
          ),
          const _TransactionItem(
            icon: Icons.autorenew,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Subscription Renewal',
            date: 'Oct 24, 2023 • 10:30 AM',
            amount: '-₹14.99',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.medical_services_outlined,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Doctor Consult - Dr. Smith',
            date: 'Oct 20, 2023 • 02:15 PM',
            amount: '-₹150.00',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.local_pharmacy_outlined,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Pharmacy - CVS Health',
            date: 'Oct 18, 2023 • 06:45 PM',
            amount: '-₹32.50',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.science_outlined,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Lab Tests - LabCorp',
            date: 'Oct 15, 2023 • 09:00 AM',
            amount: '-₹85.00',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.favorite_outline,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Specialist - Cardiology',
            date: 'Oct 10, 2023 • 11:20 AM',
            amount: '-₹200.00',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.vaccines_outlined,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Annual Flu Shot',
            date: 'Oct 05, 2023 • 03:00 PM',
            amount: '-₹0.00',
            isPaid: true,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
            child: Text(
              'SEPTEMBER 2023',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9CA3AF),
                letterSpacing: 0.5,
              ),
            ),
          ),
          const _TransactionItem(
            icon: Icons.autorenew,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Subscription Renewal',
            date: 'Sep 24, 2023 • 10:30 AM',
            amount: '-₹14.99',
            isPaid: true,
          ),
          const _TransactionItem(
            icon: Icons.clean_hands_outlined,
            iconBg: Color(0xFFDCFCE7),
            iconColor: Color(0xFF16A34A),
            title: 'Dental Cleaning',
            date: 'Sep 12, 2023 • 09:00 AM',
            amount: '-₹90.00',
            isPaid: true,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _TransactionItem extends StatelessWidget {
  const _TransactionItem({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    required this.date,
    required this.amount,
    required this.isPaid,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String date;
  final String amount;
  final bool isPaid;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 22, color: iconColor),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFFDCFCE7),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Paid',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF16A34A),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
