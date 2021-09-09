import 'package:facebook/app_data/data.dart';
import 'package:facebook/config/colors.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/circle_icon_button.dart';
import 'package:facebook/widgets/online.dart';
import 'package:facebook/widgets/post_container.dart';
import 'package:facebook/widgets/post_fragment.dart';
import 'package:facebook/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffold,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: MyColors.facebookBlue,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
        centerTitle: false,
        actions: [
          CircleButton(
            icon: Icons.search,
            iconSize: 25.0,
            onPressed: (){},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleButton(
              icon: MdiIcons.facebookMessenger,
              iconSize: 25.0,
              onPressed: (){},
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: PostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Online(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(
                currentUser: currentUser,
                stories: stories,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final Post post = posts[index];
                return PostFragment(post: post);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
