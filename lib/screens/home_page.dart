import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techofic_assignment_whatsapp/models/chat_list_model.dart';

import 'package:techofic_assignment_whatsapp/screens/widgets/chat_tile.dart';
import 'package:techofic_assignment_whatsapp/screens/widgets/notification_counter.dart';

import '../core/constants/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<ChatListModel> chatItems;

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );

    chatItems = chatListModelList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text('WhatsApp'),
              floating: true,
              pinned: true,
              forceElevated: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
              bottom: TabBarWidget(),
            ),
          ];
        },
        // tab bar view
        body: TabBarViewWidget(),
      ),
    );
  }

  Widget TabBarViewWidget() {
    return TabBarView(
      controller: _tabController,
      children: [
        ListView.separated(
          shrinkWrap: true,
          itemCount: chatItems.length,
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 5.w,
          ),
          itemBuilder: (context, index) {
            return ChatTile(
              chatItem: chatItems[index],
              index: index,
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: 70.w,
            );
          },
        ),
        const Center(
          child: Text('STATUS'),
        ),
        const Center(
          child: Text('CALLS'),
        ),
      ],
    );
  }

  PreferredSize TabBarWidget() {
    return PreferredSize(
      preferredSize: Size.fromHeight(52.h),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          Expanded(
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(.5),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'CHATS',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const NotificationCounter(counter: 1),
                    ],
                  ),
                ),
                const Tab(
                  text: 'STATUS',
                ),
                const Tab(
                  text: 'CALLS',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
