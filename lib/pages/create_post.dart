import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  String selectedCategory = 'Memes';
  TextEditingController channelNameController = TextEditingController();
  TextEditingController pictureController = TextEditingController();

  List<String> categories = ['Memes', 'Quotes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: buildCreateChannel(context),
        ),
      ),
    );
  }


  Widget buildCreateChannel(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: channelNameController,
          decoration: const InputDecoration(labelText: 'Channel Name'),
        ),
        const SizedBox(height: 16.0),
        DropdownButtonFormField<String>(
          value: selectedCategory,
          onChanged: (String? value) {
            setState(() {
              selectedCategory = value!;
            });
          },
          items: categories.map((String category) {
            return DropdownMenuItem<String>(
              value: category,
              child: Text(category),
            );
          }).toList(),
          decoration: const InputDecoration(labelText: 'Category'),
        ),
        const SizedBox(height: 50.0),


        ElevatedButton(
          onPressed: () {
            String channelName = channelNameController.text;
            String category = selectedCategory;

            if (kDebugMode) {
              print('Channel Name: $channelName');
              print('Category: $category');
            }

          },
          child: const Text('Create Post'),
        ),
      ],
    );
  }
}

