class NewsArticle {
  final String id;
  final String category;
  final String title;
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
    imageUrl: 'assets/images/sleep_quality.jpg', // Placeholder, we will use a color/dummy image
    isFeatured: true,
  ),
  const NewsArticle(
    id: '2',
    category: 'NUTRITION',
    title: 'Superfoods You Need to Include in Your Diet',
    author: 'CareTag Editorial',
    timeAgo: '2h ago',
    readTime: '4 min read',
    imageUrl: 'assets/images/superfoods.jpg',
  ),
  const NewsArticle(
    id: '3',
    category: 'MENTAL HEALTH',
    title: 'Why Mindfulness Matters in a Busy World',
    author: 'eHealth Weekly',
    timeAgo: '5h ago',
    readTime: '6 min read',
    imageUrl: 'assets/images/mindfulness.jpg',
  ),
  const NewsArticle(
    id: '4',
    category: 'FITNESS',
    title: '5 Simple Exercises for Lower Back Pain',
    author: 'Physio Tips',
    timeAgo: '8h ago',
    readTime: '3 min read',
    imageUrl: 'assets/images/lower_back.jpg',
  ),
  const NewsArticle(
    id: '5',
    category: 'INNOVATION',
    title: 'New Wearable Tech Tracks Hydration Levels',
    author: 'Tech eHealth',
    timeAgo: '1d ago',
    readTime: '5 min read',
    imageUrl: 'assets/images/hydration.jpg',
  ),
];
