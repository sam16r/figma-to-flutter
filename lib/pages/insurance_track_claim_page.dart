import 'package:flutter/material.dart';

class InsuranceTrackClaimPage extends StatelessWidget {
  const InsuranceTrackClaimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Track Claim',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Active claim card
            _ClaimSummaryCard(),

            const SizedBox(height: 24),

            // Claim timeline
            const Text(
              'Claim Progress',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 16),
            _ClaimTimeline(),

            const SizedBox(height: 24),

            // Estimated settlement
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFEFF6FF),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF3B82F6).withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Color(0xFF3B82F6),
                    size: 22,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Estimated Settlement',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D4ED8),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Your claim is expected to be processed within 5-7 business days.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Past claims
            const Text(
              'Past Claims',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 12),

            _PastClaimTile(
              type: 'Hospitalization',
              claimId: '#CLM-77432',
              amount: '₹35,000',
              date: 'Aug 14, 2023',
              status: 'Settled',
              statusColor: const Color(0xFF22C55E),
              statusBg: const Color(0xFFDCFCE7),
            ),
            const SizedBox(height: 10),
            _PastClaimTile(
              type: 'Pharmacy',
              claimId: '#CLM-65210',
              amount: '₹4,200',
              date: 'Jun 02, 2023',
              status: 'Settled',
              statusColor: const Color(0xFF22C55E),
              statusBg: const Color(0xFFDCFCE7),
            ),
            const SizedBox(height: 10),
            _PastClaimTile(
              type: 'Lab Tests',
              claimId: '#CLM-58901',
              amount: '₹8,750',
              date: 'Mar 18, 2023',
              status: 'Rejected',
              statusColor: const Color(0xFFEF4444),
              statusBg: const Color(0xFFFEE2E2),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClaimSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7ED),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.medical_services_outlined,
                  color: Color(0xFFF97316),
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dental Surgery',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    Text(
                      'Claim ID: #CLM-89201',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7ED),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'In Progress',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFF97316),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Divider(color: Colors.grey.shade100, height: 1),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _ClaimStat(label: 'Claimed Amount', value: '₹48,500'),
              ),
              Container(width: 1, height: 32, color: const Color(0xFFF3F4F6)),
              Expanded(
                child: _ClaimStat(
                  label: 'Approved Amount',
                  value: 'Pending',
                  valueColor: const Color(0xFF9CA3AF),
                ),
              ),
              Container(width: 1, height: 32, color: const Color(0xFFF3F4F6)),
              Expanded(
                child: _ClaimStat(label: 'Submitted', value: 'Oct 24'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ClaimStat extends StatelessWidget {
  const _ClaimStat({required this.label, required this.value, this.valueColor});
  final String label;
  final String value;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: valueColor ?? const Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10, color: Color(0xFF9CA3AF)),
        ),
      ],
    );
  }
}

class _ClaimTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final steps = [
      _TimelineStep(
        icon: Icons.upload_file_outlined,
        iconColor: const Color(0xFF22C55E),
        iconBg: const Color(0xFFDCFCE7),
        title: 'Claim Submitted',
        subtitle: 'Oct 24, 2023 • 09:15 AM',
        isDone: true,
        isActive: false,
      ),
      _TimelineStep(
        icon: Icons.task_outlined,
        iconColor: const Color(0xFF22C55E),
        iconBg: const Color(0xFFDCFCE7),
        title: 'Documents Verified',
        subtitle: 'Oct 24, 2023 • 10:30 AM',
        isDone: true,
        isActive: false,
      ),
      _TimelineStep(
        icon: Icons.local_hospital_outlined,
        iconColor: const Color(0xFF3B82F6),
        iconBg: const Color(0xFFEFF6FF),
        title: 'Medical Review',
        subtitle: 'In progress — est. 2 business days',
        isDone: false,
        isActive: true,
      ),
      _TimelineStep(
        icon: Icons.verified_outlined,
        iconColor: const Color(0xFF9CA3AF),
        iconBg: const Color(0xFFF3F4F6),
        title: 'Approval Decision',
        subtitle: 'Pending',
        isDone: false,
        isActive: false,
      ),
      _TimelineStep(
        icon: Icons.account_balance_wallet_outlined,
        iconColor: const Color(0xFF9CA3AF),
        iconBg: const Color(0xFFF3F4F6),
        title: 'Settlement',
        subtitle: 'Pending',
        isDone: false,
        isActive: false,
        isLast: true,
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: steps),
    );
  }
}

class _TimelineStep extends StatelessWidget {
  const _TimelineStep({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.isDone,
    required this.isActive,
    this.isLast = false,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String subtitle;
  final bool isDone;
  final bool isActive;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(10),
                  border: isActive
                      ? Border.all(color: const Color(0xFF3B82F6), width: 1.5)
                      : null,
                ),
                child: Icon(icon, color: iconColor, size: 20),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: isDone
                        ? const Color(0xFF22C55E).withValues(alpha: 0.3)
                        : const Color(0xFFE5E7EB),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: isActive
                          ? const Color(0xFF3B82F6)
                          : isDone
                          ? const Color(0xFF111827)
                          : const Color(0xFF9CA3AF),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
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

class _PastClaimTile extends StatelessWidget {
  const _PastClaimTile({
    required this.type,
    required this.claimId,
    required this.amount,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.statusBg,
  });

  final String type;
  final String claimId;
  final String amount;
  final String date;
  final String status;
  final Color statusColor;
  final Color statusBg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$claimId  •  $date',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
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
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: statusBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: statusColor,
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
