import 'package:facebook/config/colors.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostFragment extends StatelessWidget {
  final Post post;

  const PostFragment({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 0.0
      ),
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PostHeader(post: post),
                  const SizedBox(height: 4.0),
                  Text(post.caption),
                  post.imageUrl != '' ? const SizedBox.shrink()
                      : const SizedBox(height: 6.0),
                ],
              ),
            ),
            post.imageUrl != '' ?
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: post.imageUrl != '' ?
                post.multi ? CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(post.imageUrl),
                ) :
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(post.imageUrl),
                          fit: BoxFit.cover
                      )
                  ),
                ) :
                SizedBox.shrink()
            )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: _PostStats(post: post),
            ),
          ],
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo} • ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _PostStats extends StatelessWidget {
  final Post post;

  const _PostStats({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: MyColors.facebookBlue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    size: 10.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    '${post.likes}',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Text(
                  '${post.comments} Comments',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  '${post.shares} Shares',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                _PostButton(
                  icon: Icon(
                    MdiIcons.thumbUpOutline,
                    color:Colors.grey[600],
                    size: 20.0,
                  ),
                  label: 'Like',
                  onTap: (){
                    print('like');
                  }
                ),
                _PostButton(
                  icon: Icon(
                    MdiIcons.commentOutline,
                    color: Colors.grey[600],
                    size: 20.0,
                  ),
                  label: 'Comment',
                  onTap: () => print('Comment'),
                ),
                _PostButton(
                  icon: Icon(
                    MdiIcons.shareOutline,
                    color: Colors.grey[600],
                    size: 25.0,
                  ),
                  label: 'Share',
                  onTap: () => print('Share'),
                )
              ],
            ),
          ],
        );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const _PostButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () => onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
