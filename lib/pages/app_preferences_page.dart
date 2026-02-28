import 'package:flutter/material.dart';

class AppPreferencesPage extends StatefulWidget {
  const AppPreferencesPage({super.key});

  static const routeName = '/app-preferences';

  @override
  State<AppPreferencesPage> createState() => _AppPreferencesPageState();
}

class _AppPreferencesPageState extends State<AppPreferencesPage> {
  String _measurementUnit = 'metric';
  String _temperatureUnit = 'celsius';
  String _dateFormat = 'ddmmyyyy';
  String _defaultLandingPage = 'dashboard';

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
          'App Preferences',
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
        padding: const EdgeInsets.all(20),
        children: [
          _PreferenceSection(
            icon: Icons.straighten,
            title: 'Measurement Units',
            children: [
              _RadioOption(
                label: 'Metric (cm, kg)',
                value: 'metric',
                groupValue: _measurementUnit,
                onChanged: (value) {
                  setState(() => _measurementUnit = value!);
                },
              ),
              _RadioOption(
                label: 'Imperial (ft, lbs)',
                value: 'imperial',
                groupValue: _measurementUnit,
                onChanged: (value) {
                  setState(() => _measurementUnit = value!);
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          _PreferenceSection(
            icon: Icons.thermostat_outlined,
            title: 'Temperature Unit',
            children: [
              _RadioOption(
                label: 'Celsius (°C)',
                value: 'celsius',
                groupValue: _temperatureUnit,
                onChanged: (value) {
                  setState(() => _temperatureUnit = value!);
                },
              ),
              _RadioOption(
                label: 'Fahrenheit (°F)',
                value: 'fahrenheit',
                groupValue: _temperatureUnit,
                onChanged: (value) {
                  setState(() => _temperatureUnit = value!);
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          _PreferenceSection(
            icon: Icons.calendar_today_outlined,
            title: 'Date Format',
            children: [
              _RadioOption(
                label: 'DD/MM/YYYY',
                value: 'ddmmyyyy',
                groupValue: _dateFormat,
                onChanged: (value) {
                  setState(() => _dateFormat = value!);
                },
              ),
              _RadioOption(
                label: 'MM/DD/YYYY',
                value: 'mmddyyyy',
                groupValue: _dateFormat,
                onChanged: (value) {
                  setState(() => _dateFormat = value!);
                },
              ),
              _RadioOption(
                label: 'YYYY-MM-DD',
                value: 'yyyymmdd',
                groupValue: _dateFormat,
                onChanged: (value) {
                  setState(() => _dateFormat = value!);
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          _PreferenceSection(
            icon: Icons.home_outlined,
            title: 'Default Landing Page',
            children: [
              _RadioOption(
                label: 'Dashboard',
                value: 'dashboard',
                groupValue: _defaultLandingPage,
                onChanged: (value) {
                  setState(() => _defaultLandingPage = value!);
                },
              ),
              _RadioOption(
                label: 'Profile',
                value: 'profile',
                groupValue: _defaultLandingPage,
                onChanged: (value) {
                  setState(() => _defaultLandingPage = value!);
                },
              ),
              _RadioOption(
                label: 'Activity Log',
                value: 'activity',
                groupValue: _defaultLandingPage,
                onChanged: (value) {
                  setState(() => _defaultLandingPage = value!);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PreferenceSection extends StatelessWidget {
  const _PreferenceSection({
    required this.icon,
    required this.title,
    required this.children,
  });

  final IconData icon;
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: const Color(0xFF6B7280)),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }
}

class _RadioOption extends StatelessWidget {
  const _RadioOption({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 15, color: Color(0xFF374151)),
          ),
          Radio<String>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: const Color(0xFF1E63F4),
          ),
        ],
      ),
    );
  }
}
