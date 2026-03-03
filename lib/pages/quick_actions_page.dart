import 'package:flutter/material.dart';

class QuickActionsPage extends StatelessWidget {
  const QuickActionsPage({super.key});

  static const routeName = '/quick-actions';

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
          'Quick Actions',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF111827),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF111827)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Find a service...',
                  hintStyle: TextStyle(color: Color(0xFF9CA3AF), fontSize: 15),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF9CA3AF)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 13),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // CONSULTATIONS
            _SectionLabel(label: 'CONSULTATIONS'),
            const SizedBox(height: 12),
            _ActionGrid(
              items: const [
                _ActionItem(
                  icon: Icons.calendar_today_outlined,
                  iconColor: Color(0xFF3B82F6),
                  bgColor: Color(0xFFEFF6FF),
                  label: 'Book\nAppt',
                ),
                _ActionItem(
                  icon: Icons.videocam_outlined,
                  iconColor: Color(0xFF0D9488),
                  bgColor: Color(0xFFECFEFE),
                  label: 'Online\nConsult',
                ),
                _ActionItem(
                  icon: Icons.refresh,
                  iconColor: Color(0xFF6366F1),
                  bgColor: Color(0xFFEEF2FF),
                  label: 'Follow-up',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // PHARMACY
            _SectionLabel(label: 'PHARMACY'),
            const SizedBox(height: 12),
            _ActionGrid(
              items: const [
                _ActionItem(
                  icon: Icons.medication_outlined,
                  iconColor: Color(0xFF10B981),
                  bgColor: Color(0xFFECFDF5),
                  label: 'Order\nMedicine',
                ),
                _ActionItem(
                  icon: Icons.upload_file_outlined,
                  iconColor: Color(0xFF10B981),
                  bgColor: Color(0xFFECFDF5),
                  label: 'Upload\nRx',
                ),
                _ActionItem(
                  icon: Icons.task_alt,
                  iconColor: Color(0xFF10B981),
                  bgColor: Color(0xFFECFDF5),
                  label: 'Medicine\nReminder',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // DIAGNOSTICS
            _SectionLabel(label: 'DIAGNOSTICS'),
            const SizedBox(height: 12),
            _ActionGrid(
              items: const [
                _ActionItem(
                  icon: Icons.science_outlined,
                  iconColor: Color(0xFF8B5CF6),
                  bgColor: Color(0xFFF5F3FF),
                  label: 'Lab\nTests',
                ),
                _ActionItem(
                  icon: Icons.home_outlined,
                  iconColor: Color(0xFFEC4899),
                  bgColor: Color(0xFFFDF2F8),
                  label: 'Home\nSample',
                ),
                _ActionItem(
                  icon: Icons.list_alt_outlined,
                  iconColor: Color(0xFF8B5CF6),
                  bgColor: Color(0xFFF5F3FF),
                  label: 'View\nReports',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // EMERGENCY
            _SectionLabel(label: 'EMERGENCY'),
            const SizedBox(height: 12),
            _ActionGrid(
              items: const [
                _ActionItem(
                  icon: Icons.sos,
                  iconColor: Color(0xFFEF4444),
                  bgColor: Color(0xFFFEE2E2),
                  label: 'SOS\nEmergency',
                ),
                _ActionItem(
                  icon: Icons.airport_shuttle_outlined,
                  iconColor: Color(0xFFEF4444),
                  bgColor: Color(0xFFFEE2E2),
                  label: 'Ambulance',
                ),
                _ActionItem(
                  icon: Icons.local_hospital_outlined,
                  iconColor: Color(0xFFF97316),
                  bgColor: Color(0xFFFFF7ED),
                  label: 'Find\nHospital',
                ),
              ],
            ),

            const SizedBox(height: 24),

            // MANAGEMENT
            _SectionLabel(label: 'MANAGEMENT'),
            const SizedBox(height: 12),
            _ActionGrid(
              items: const [
                _ActionItem(
                  icon: Icons.description_outlined,
                  iconColor: Color(0xFF6B7280),
                  bgColor: Color(0xFFF3F4F6),
                  label: 'Insurance\nClaim',
                ),
                _ActionItem(
                  icon: Icons.qr_code_scanner,
                  iconColor: Color(0xFF3B82F6),
                  bgColor: Color(0xFFEFF6FF),
                  label: 'Scan\nCareTag',
                ),
                _ActionItem(
                  icon: Icons.notifications_active_outlined,
                  iconColor: Color(0xFFEAB308),
                  bgColor: Color(0xFFFEFCE8),
                  label: 'Health\nAlerts',
                ),
              ],
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Color(0xFF6B7280),
        letterSpacing: 0.8,
      ),
    );
  }
}

class _ActionItem {
  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final String label;

  const _ActionItem({
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.label,
  });
}

class _ActionGrid extends StatelessWidget {
  const _ActionGrid({required this.items});
  final List<_ActionItem> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.expand((item) {
        final isLast = items.last == item;
        return [
          Expanded(child: _ActionTile(item: item)),
          if (!isLast) const SizedBox(width: 12),
        ];
      }).toList(),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({required this.item});
  final _ActionItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: item.bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(item.icon, color: item.iconColor, size: 24),
          ),
          const SizedBox(height: 8),
          Text(
            item.label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF374151),
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
