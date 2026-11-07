import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo harry milevo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const PavlovaPage(),
    );
  }
}

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  static const String description =
      'Pavlova is a meringue-based dessert named after the '
      'Russian ballerina Anna Pavlova. Pavlova features a '
      'crisp crust and soft, light inside, topped with fruit '
      'and whipped cream.';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFAF5FB),
                borderRadius: BorderRadius.circular(8),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Pavlova image
                  Image.asset(
                    'assets/pavlova.jpg',
                    width: double.infinity,
                    height: 320,
                    fit: BoxFit.cover,
                  ),

                  // Title and description
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Strawberry Pavlova',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Star rating
                  const PavlovaRating(
                    rating: 3,
                    reviews: 90,
                  ),

                  const SizedBox(height: 30),

                  // Prep, cook, and feeds
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: PavlovaInfo(
                            icon: Icons.timer_outlined,
                            title: 'PREP',
                            value: '25 min',
                          ),
                        ),
                        Expanded(
                          child: PavlovaInfo(
                            icon: Icons.restaurant,
                            title: 'COOK',
                            value: '1 hr',
                          ),
                        ),
                        Expanded(
                          child: PavlovaInfo(
                            icon: Icons.people,
                            title: 'FEEDS',
                            value: '4-6 hrs',
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// STAR RATING
class PavlovaRating extends StatelessWidget {
  final int rating;
  final int reviews;

  const PavlovaRating({
    super.key,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= 5; i++)
          Icon(
            i <= rating ? Icons.star : Icons.star_border,
            color: Colors.amber,
            size: 26,
          ),
        const SizedBox(width: 12),
        Text(
          '$reviews Reviews',
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// PREP, COOK, AND FEEDS INFORMATION
class PavlovaInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const PavlovaInfo({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.amber,
          size: 32,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}



