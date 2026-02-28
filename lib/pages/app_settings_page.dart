import 'package:flutter/material.dart';

class AppSettingsPage extends StatefulWidget {
  const AppSettingsPage({super.key});

  static const routeName = '/app-settings';

  @override
  State<AppSettingsPage> createState() => _AppSettingsPageState();
}

class _AppSettingsPageState extends State<AppSettingsPage> {
  String _theme = 'Light';
  bool _pushNotifications = true;

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
          'App Settings',
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
          const _SectionHeader('GENERAL'),
          _SettingRow(
            icon: Icons.language,
            iconBg: const Color(0xFFF3F4F6),
            iconColor: const Color(0xFF6B7280),
            title: 'App Language',
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'English',
                  style: TextStyle(fontSize: 15, color: Color(0xFF6B7280)),
                ),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Color(0xFFB0B7C3), size: 20),
              ],
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.dark_mode_outlined,
                      size: 22,
                      color: Color(0xFF6B7280),
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Theme',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      _ThemeButton(
                        label: 'Light',
                        isSelected: _theme == 'Light',
                        onTap: () => setState(() => _theme = 'Light'),
                      ),
                      _ThemeButton(
                        label: 'Dark',
                        isSelected: _theme == 'Dark',
                        onTap: () => setState(() => _theme = 'Dark'),
                      ),
                      _ThemeButton(
                        label: 'System',
                        isSelected: _theme == 'System',
                        onTap: () => setState(() => _theme = 'System'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _SettingRow(
            icon: Icons.thermostat_outlined,
            iconBg: const Color(0xFFF3F4F6),
            iconColor: const Color(0xFF6B7280),
            title: 'Temperature Unit',
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Celsius',
                  style: TextStyle(fontSize: 15, color: Color(0xFF6B7280)),
                ),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Color(0xFFB0B7C3), size: 20),
              ],
            ),
            onTap: () {},
          ),
          const _SectionHeader('DATA & STORAGE'),
          _SettingRow(
            icon: Icons.delete_outline,
            iconBg: const Color(0xFFF3F4F6),
            iconColor: const Color(0xFF6B7280),
            title: 'Clear Cache',
            subtitle: 'Free up space on your device',
            trailing: const Icon(
              Icons.chevron_right,
              color: Color(0xFFB0B7C3),
              size: 20,
            ),
            onTap: () {},
          ),
          _SettingRow(
            icon: Icons.sync,
            iconBg: const Color(0xFFF3F4F6),
            iconColor: const Color(0xFF6B7280),
            title: 'Database Sync',
            subtitle: 'Last synced: Today, 10:30 AM',
            trailing: const Icon(
              Icons.chevron_right,
              color: Color(0xFFB0B7C3),
              size: 20,
            ),
            onTap: () {},
          ),
          const _SectionHeader('NOTIFICATIONS'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF3F4F6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 20,
                    color: Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Text(
                    'Push Notifications',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF111827),
                    ),
                  ),
                ),
                Switch(
                  value: _pushNotifications,
                  onChanged: (value) {
                    setState(() => _pushNotifications = value);
                  },
                  activeColor: const Color(0xFF1E63F4),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'CareTag App Version 2.4.1 (Build 204)',
              style: TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF9CA3AF),
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class _SettingRow extends StatelessWidget {
  const _SettingRow({
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.onTap,
  });

  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBg,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 20, color: iconColor),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF111827),
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeButton extends StatelessWidget {
  const _ThemeButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              color: isSelected
                  ? const Color(0xFF111827)
                  : const Color(0xFF6B7280),
            ),
          ),
        ),
      ),
    );
  }
}
