import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pd/views/home/widgets/details_card_button.dart';
import 'package:pd/views/shared/web_view_screen.dart';

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
                      Hero(
                        tag: 'profile',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://res.cloudinary.com/dbql17dyz/image/upload/v1694251329/profile-pic_geigt8.png',
                          ),
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
                            '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')} ${dateTime.hour < 12 ? 'AM' : 'PM'} local time',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WebViewScreen(
                                title: 'GitHub',
                                url: 'https://github.com/davidaodejobi/',
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
