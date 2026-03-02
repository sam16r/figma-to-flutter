import 'package:flutter/material.dart';

class PeerSupportPage extends StatelessWidget {
  const PeerSupportPage({super.key});

  static const routeName = '/peer-support';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Column(
        children: [
          // Blue header
          Container(
            color: const Color(0xFF3B82F6),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 8,
              left: 16,
              right: 16,
              bottom: 12,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mindfulness & Peer Support',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle, color: Color(0xFF4ADE80), size: 8),
                          SizedBox(width: 4),
                          Text(
                            '56 active members',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                  size: 22,
                ),
              ],
            ),
          ),

          // Daily prompt
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.psychology_outlined,
                    color: Color(0xFF3B82F6),
                    size: 18,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DAILY PROMPT',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF3B82F6),
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '"How did you find stillness today?"',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Today, 8:00 AM',
                  style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
                ),
              ],
            ),
          ),

          // Chat area
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  // Date divider
                  const _DateDivider(label: 'Today'),

                  // Elena Rossi message
                  const _LeftMessage(
                    name: 'Elena Rossi',
                    time: '9:41 AM',
                    avatarColor: Color(0xFF6366F1),
                    text:
                        'I took 5 minutes to just breathe before my morning coffee. It made such a difference in how I started the day!',
                    reactions: '💙 2   😊 1',
                  ),

                  const SizedBox(height: 4),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Center(
                      child: Text(
                        '🫂 You and 3 others sent a hug',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ),
                  ),

                  // Marcus Chen message
                  const _LeftMessage(
                    name: 'Marcus Chen',
                    time: '9:45 AM',
                    avatarColor: Color(0xFF0D9488),
                    text:
                        'That sounds lovely, Elena. I\'ve been struggling with anxiety this morning, so I might try the box breathing technique we discussed last week.',
                    reactions: null,
                  ),

                  // User's own message (right)
                  const _RightMessage(
                    time: '9:52 AM',
                    text:
                        'You\'ve got this, Marcus! Remember to be kind to yourself. I sat by the window and watched the rain for a bit. Very grounding. 🌧',
                  ),

                  // Sarah Jenkins with image
                  const _LeftMessage(
                    name: 'Sarah Jenkins',
                    time: '10:05 AM',
                    avatarColor: Color(0xFFE5E7EB),
                    avatarIconColor: Color(0xFF9CA3AF),
                    text:
                        'Found this spot in the park today.\nNature really heals.',
                    imageUrl:
                        'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=400&auto=format&fit=crop',
                    reactions: null,
                  ),

                  // Dr. Patel (MOD)
                  const _LeftMessage(
                    name: 'Dr. Patel',
                    time: '10:12 AM',
                    avatarColor: Color(0xFF111827),
                    isMod: true,
                    text:
                        'Beautiful photo Sarah! Just a gentle reminder for everyone that our weekly group meditation starts in 1 hour. Topic: Self-Compassion.',
                    reactions: null,
                  ),

                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),

          // Input bar
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 8,
              top: 8,
              left: 12,
              right: 12,
            ),
            child: Column(
              children: [
                // Quick actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _QuickAction(
                      icon: Icons.favorite_border,
                      label: 'Support',
                      color: Color(0xFFEF4444),
                    ),
                    SizedBox(width: 20),
                    _QuickAction(
                      icon: Icons.emoji_emotions_outlined,
                      label: 'Send Hug',
                      color: Color(0xFFF97316),
                    ),
                    SizedBox(width: 20),
                    _QuickAction(
                      icon: Icons.photo_camera_outlined,
                      label: 'Photo',
                      color: Color(0xFF3B82F6),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F4F6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF6B7280),
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(
                            color: Color(0xFF9CA3AF),
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: Color(0xFFF3F4F6),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.sentiment_satisfied_outlined,
                      color: Color(0xFF9CA3AF),
                      size: 22,
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFF3B82F6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DateDivider extends StatelessWidget {
  const _DateDivider({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xFFE5E7EB),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF6B7280),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class _LeftMessage extends StatelessWidget {
  const _LeftMessage({
    required this.name,
    required this.time,
    required this.avatarColor,
    required this.text,
    this.reactions,
    this.imageUrl,
    this.avatarIconColor = Colors.white,
    this.isMod = false,
  });
  final String name;
  final String time;
  final Color avatarColor;
  final Color avatarIconColor;
  final String text;
  final String? reactions;
  final String? imageUrl;
  final bool isMod;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: avatarColor,
            child: Icon(Icons.person, color: avatarIconColor, size: 18),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111827),
                      ),
                    ),
                    if (isMod) ...[
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF7C3AED),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'MOD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(width: 6),
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF9CA3AF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (imageUrl != null) ...[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            imageUrl!,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              height: 120,
                              color: const Color(0xFFE5E7EB),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF111827),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                if (reactions != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    reactions!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RightMessage extends StatelessWidget {
  const _RightMessage({required this.time, required this.text});
  final String time;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color(0xFF3B82F6),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Read ✓✓',
            style: TextStyle(fontSize: 11, color: Color(0xFF9CA3AF)),
          ),
        ],
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({
    required this.icon,
    required this.label,
    required this.color,
  });
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 16),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}
