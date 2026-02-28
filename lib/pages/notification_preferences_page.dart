import 'package:flutter/material.dart';

class NotificationPreferencesPage extends StatefulWidget {
  const NotificationPreferencesPage({super.key});

  static const routeName = '/notification-preferences';

  @override
  State<NotificationPreferencesPage> createState() =>
      _NotificationPreferencesPageState();
}

class _NotificationPreferencesPageState
    extends State<NotificationPreferencesPage> {
  bool _medicationReminders = true;
  bool _labReports = true;
  bool _confirmation = true;
  bool _reminders = true;
  bool _promotions = false;
  bool _tips = true;

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
          'Notifications Preferences',
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
        padding: const EdgeInsets.all(16),
        children: [
          const _CategoryHeader(
            icon: Icons.medication,
            iconBg: Color(0xFFFFF2CC),
            title: 'MEDICAL',
          ),
          const SizedBox(height: 12),
          _ToggleRow(
            title: 'Medication Reminders',
            value: _medicationReminders,
            onChanged: (value) => setState(() => _medicationReminders = value),
          ),
          _ToggleRow(
            title: 'Lab Reports',
            value: _labReports,
            onChanged: (value) => setState(() => _labReports = value),
          ),
          const SizedBox(height: 24),
          const _CategoryHeader(
            icon: Icons.calendar_today,
            iconBg: Color(0xFFFFF2CC),
            title: 'APPOINTMENTS',
          ),
          const SizedBox(height: 12),
          _ToggleRow(
            title: 'Confirmation',
            value: _confirmation,
            onChanged: (value) => setState(() => _confirmation = value),
          ),
          _ToggleRow(
            title: 'Reminders',
            value: _reminders,
            onChanged: (value) => setState(() => _reminders = value),
          ),
          const SizedBox(height: 24),
          const _CategoryHeader(
            icon: Icons.campaign,
            iconBg: Color(0xFFFFF2CC),
            title: 'OTHERS',
          ),
          const SizedBox(height: 12),
          _ToggleRow(
            title: 'Promotions',
            value: _promotions,
            onChanged: (value) => setState(() => _promotions = value),
          ),
          _ToggleRow(
            title: 'Tips',
            value: _tips,
            onChanged: (value) => setState(() => _tips = value),
          ),
        ],
      ),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    required this.icon,
    required this.iconBg,
    required this.title,
  });

  final IconData icon;
  final Color iconBg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: iconBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 18, color: const Color(0xFFF59E0B)),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Color(0xFF6B7280),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}

class _ToggleRow extends StatelessWidget {
  const _ToggleRow({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF111827),
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFFF59E0B),
          ),
        ],
      ),
    );
  }
}
