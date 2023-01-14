import 'package:firebase_chat/pages/message/chat/controller.dart';
import 'package:firebase_chat/pages/sign_in/controller.dart';
import 'package:get/get.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}
