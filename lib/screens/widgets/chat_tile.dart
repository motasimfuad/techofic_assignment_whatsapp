import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:techofic_assignment_whatsapp/models/chat_list_model.dart';
import 'package:techofic_assignment_whatsapp/screens/widgets/notification_counter.dart';

class ChatTile extends StatelessWidget {
  final int index;
  final ChatListModel chatItem;
  const ChatTile({
    Key? key,
    required this.index,
    required this.chatItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      minVerticalPadding: 0,
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 30.r,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: (chatItem.image != '')
            ? AssetImage(
                chatItem.image,
              )
            : const AssetImage(
                "assets/users/6.png",
              ),
      ),
      title: Text(
        chatItem.name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 5.w),
        child: Row(
          children: [
            chatItem.seen
                ? Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Icon(
                      Icons.check,
                      color: Colors.lightBlue,
                      size: 20.w,
                    ),
                  )
                : const SizedBox(),
            Expanded(
              child: Text(
                chatItem.message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: chatItem.isTyping
                      ? Theme.of(context).colorScheme.secondary
                      : null,
                  fontWeight: chatItem.isTyping ? FontWeight.w600 : null,
                ),
              ),
            ),
          ],
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            chatItem.time,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          (chatItem.counter > 0)
              ? NotificationCounter(
                  counter: 2,
                  bgColor: Theme.of(context).colorScheme.secondary,
                  textColor: Colors.white,
                )
              : SizedBox(
                  width: 15.w,
                  height: 15.w,
                ),
        ],
      ),
    );
  }
}
