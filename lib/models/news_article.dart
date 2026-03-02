class NewsArticle {
  final String id;
  final String category;
  final String title;
  final String subtitle;
  final String author;
  final String timeAgo;
  final String readTime;
  final String imageUrl;
  final bool isFeatured;
  final String content;

  const NewsArticle({
    required this.id,
    required this.category,
    required this.title,
    this.subtitle = '',
    required this.author,
    required this.timeAgo,
    required this.readTime,
    required this.imageUrl,
    this.isFeatured = false,
    this.content = '',
  });
}

final List<NewsArticle> dummyNewsArticles = [
  const NewsArticle(
    id: '1',
    category: 'FEATURED',
    title: 'The Secret to Better Sleep Quality',
    author: 'Dr. Sarah Jenkins',
    timeAgo: 'Just now',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: '2',
    category: 'NUTRITION',
    title: 'Superfoods You Need to Include in Your Diet',
    author: 'CareTag Editorial',
    timeAgo: '2h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '3',
    category: 'MENTAL HEALTH',
    title: 'Why Mindfulness Matters in a Busy World',
    author: 'eHealth Weekly',
    timeAgo: '5h ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '4',
    category: 'FITNESS',
    title: '5 Simple Exercises for Lower Back Pain',
    author: 'Physio Tips',
    timeAgo: '8h ago',
    readTime: '15 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: '5',
    category: 'INNOVATION',
    title: 'New Wearable Tech Tracks Hydration Levels',
    author: 'Tech eHealth',
    timeAgo: '1d ago',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=800&auto=format&fit=crop',
  ),
];

// Health Tips Tab Articles
final List<NewsArticle> healthTipsArticles = [
  const NewsArticle(
    id: 'ht1',
    category: 'NUTRITION',
    title: '7-Day High Protein Meal Plan',
    subtitle:
        'Boost your energy and build muscle with this dietitian-approved weekly guide tailored for...',
    author: 'CareTag Editorial',
    timeAgo: 'Just now',
    readTime: '5 min read',
    imageUrl:
        'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=800&auto=format&fit=crop',
    isFeatured: true,
  ),
  const NewsArticle(
    id: 'ht2',
    category: 'FITNESS',
    title: 'Home Cardio for Beginners',
    subtitle:
        'No equipment needed. Start your journey to better heart health toda...',
    author: 'Sarah Jenkins',
    timeAgo: '2 hours ago',
    readTime: '15 min',
    imageUrl:
        'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht3',
    category: 'DIET',
    title: 'Superfoods for Immunity',
    subtitle:
        'Incorporating ginger, turmeric, and citrus into your daily routine can...',
    author: 'Dr. Sarah Jensen',
    timeAgo: '5 hours ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht4',
    category: 'WELLNESS',
    title: 'The Role of Hydration in Weight Loss',
    subtitle:
        'Why drinking water before meals is a game changer for your...',
    author: 'Dr. Sarah Waters',
    timeAgo: '1 day ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1548839140-29a749e1cf4d?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht5',
    category: 'FITNESS',
    title: 'The Science of HIIT',
    subtitle:
        'Maximize your calorie burn in less time with High-Intensity Interval...',
    author: 'Dr. Marcus Thorne',
    timeAgo: '1 day ago',
    readTime: '6 min',
    imageUrl:
        'https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?w=800&auto=format&fit=crop',
  ),
  const NewsArticle(
    id: 'ht6',
    category: 'DIET',
    title: 'Sugar Detox: Day 1',
    subtitle:
        'Understanding sugar withdrawal and how to replace empty calories...',
    author: 'CareTag Editorial',
    timeAgo: '2 days ago',
    readTime: '5 min',
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&auto=format&fit=crop',
  ),
];
