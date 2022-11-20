import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  static String id = 'ChatScreen';

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: messages.get(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data!.docs[0]['message']);
            return Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      kLogo,
                      height: 50,
                    ),
                    const Text('Chat App'),
                  ],
                ),
                backgroundColor: kPrimaryColor,
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: ((context, index) {
                        return const ChatBuble();
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messages
                            .add({
                              'message': data,
                            })
                            .then(
                                (value) => showSnackBar(context, 'User sent.'))
                            .catchError((error) =>
                                print("Failed to sent message: $error"));

                        controller.clear();
                      },
                      decoration: InputDecoration(
                        hintText: 'Send message',
                        suffixIcon: const Icon(
                          Icons.send,
                          color: kPrimaryColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                          borderSide: const BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Text('Loading...');
          }
        });
  }
}
