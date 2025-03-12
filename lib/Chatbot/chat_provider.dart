import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'chatbot_responses.dart';

class ChatProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    // Save user message to Firestore
    await _firestore.collection('messages').add({
      'text': message,
      'sender': 'user',
      'timestamp': FieldValue.serverTimestamp(),
    });

    // Get bot response and save it
    String botResponse = ChatbotResponses.getResponse(message);
    await Future.delayed(Duration(seconds: 1)); // Simulate bot typing

    await _firestore.collection('messages').add({
      'text': botResponse,
      'sender': 'bot',
      'timestamp': FieldValue.serverTimestamp(),
    });

    notifyListeners();
  }

  Stream<QuerySnapshot> getMessages() {
    return _firestore
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots();
  }
}
