// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xFF02111b,
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Color(0xFF343a40),
          actionTextColor: Color(0xFF6c757d),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 16,
          ),
          bodySmall: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 13,
          ),
          displayLarge: TextStyle(
            color: Color(0xFFf8f9fa),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          displayMedium: TextStyle(
            color: Color(0xFFf8f9fa),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          displaySmall: TextStyle(
            color: Color(0xFFf8f9fa),
            fontSize: 18,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://res.cloudinary.com/dbql17dyz/image/upload/v1694251329/profile-pic_geigt8.png',
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'David Odejobi',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 8),
                      const Text('He/Him'),
                      const SizedBox(height: 12),
                      Row(children: [
                        const SizedBox(width: 4),
                        const CircleAvatar(
                          radius: 4,
                          backgroundColor: Color(0xFF2d6a4f),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Active',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ]),
                      const SizedBox(height: 12),
                      Text(
                        '1️⃣',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          //clock icon
                          const Icon(
                            Icons.access_time,
                            color: Color(0xFFf8f9fa),
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${dateTime.hour % 12}:${dateTime.minute.toString().padLeft(2, '0')} ${dateTime.hour < 12 ? 'AM' : 'PM'} local time',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 14,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      DetailsCardButton(
                        text: 'Slack Username: ckodes',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                  label: 'Copy',
                                  onPressed: () {
                                    Clipboard.setData(const ClipboardData(
                                      text: 'ckodes',
                                    ));
                                  }),
                              content: Text(
                                'ckodes',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      DetailsCardButton(
                        text: 'Open GitHub',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              action: SnackBarAction(
                                  label: 'Copy',
                                  onPressed: () {
                                    Clipboard.setData(const ClipboardData(
                                      text: 'ckodes',
                                    ));
                                  }),
                              content: Text(
                                'ckodes',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: DetailsCardButton(
                  text: 'Just a short bio',
                  color: const Color(0xFF2d6a4f),
                  borderColor: const Color(0xFF2d6a4f),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 4,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFf8f9fa),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFF343a40),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Text(
              '''I am a dedicated mobile engineer with a strong emphasis on creating and delivering high-quality mobile applications for businesses. Working in this space for over three years, I have gained a profound understanding of crafting efficient and scalable solutions that contribute to business success and foster customer engagement.
              
fun fact: I am always eager to expand my knowledge and stay up-to-date with the latest industry trends and technologies.
              ''',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
    },
  );
}

class DetailsCardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? borderColor;
  const DetailsCardButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: borderColor ?? const Color(0xFF4a4e69),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
