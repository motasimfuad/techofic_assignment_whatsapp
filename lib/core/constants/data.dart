import '../../models/chat_list_model.dart';

final List chatList = [
  {
    'image': 'assets/users/1.png',
    'name': 'Weekend',
    'message': 'Sofia: 💣 Sticker',
    'time': '9:49',
    'counter': 2,
    'seen': false,
    'isTyping': false,
  },
  {
    'image': 'assets/users/2.png',
    'name': 'Joao Pereira',
    'message': 'typing...',
    'time': '9:45',
    'counter': 0,
    'seen': false,
    'isTyping': true,
  },
  {
    'image': 'assets/users/3.png',
    'name': 'Isabella van Rijn',
    'message': '🎥 Best breakfast ever',
    'time': '9:49',
    'counter': 0,
    'seen': false,
    'isTyping': false,
  },
  {
    'image': 'assets/users/6.png',
    'name': 'Family',
    'message': 'Mom: She is so cute 😍',
    'time': '9:09',
    'counter': 0,
    'seen': false,
    'isTyping': false,
  },
  {
    'image': 'assets/users/6.png',
    'name': 'Alicia Garcia',
    'message': 'It was so great to see you! Let’s do it again!',
    'time': '8:58',
    'counter': 0,
    'seen': true,
    'isTyping': false,
  },
  {
    'image': 'assets/users/6.png',
    'name': 'Lunch club!',
    'message': 'Dominic: 💟 GIF',
    'time': '8:33',
    'counter': 0,
    'seen': false,
    'isTyping': false,
  },
  {
    'image': 'assets/users/7.png',
    'name': 'Sandra\'s Cakes',
    'message': 'It will be ready on Thursday!',
    'time': 'Yesterday',
    'counter': 0,
    'seen': false,
    'isTyping': false,
  },
  ...List.generate(20, (index) => dummy),
];

var dummy = {
  'image': '',
  'name': 'Dum-e',
  'message': 'It will be ready on Dday!',
  'time': 'Yesterday',
  'counter': 0,
  'seen': false,
  'isTyping': false,
};

List<ChatListModel> chatListModelList =
    chatList.map((e) => ChatListModel.fromMap(e)).toList();
