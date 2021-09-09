import 'package:facebook/models/models.dart';

final User currentUser = User(
  name: 'Youssef Mohammed',
  imageUrl: 'assets/images/1.jpg'
);

final List<User> onlineUsers = [
  User(
      name: 'Ahmed Tarek',
      imageUrl: 'assets/images/2.jpg'
  ),
  User(
      name: 'Sara Ahmed',
      imageUrl:
      'assets/images/3.jpg'
  ),
  User(
      name: 'Mahmoud Khaled',
      imageUrl:
      'assets/images/4.jpg'
  ),
  User(
      name: 'Yasmeen Salama',
      imageUrl:
      'assets/images/5.jpg'
  ),
  User(
      name: 'Abd alAziz',
      imageUrl:
      'assets/images/6.jpg'
  ),
  User(
      name: 'Marwa Atef',
      imageUrl:
      'assets/images/7.jpg'
  ),
  User(
      name: 'Sameer Ahmed',
      imageUrl:
      'assets/images/8.jpg'
  ),
  User(
      name: 'Sara Emad',
      imageUrl:
      'assets/images/9.jpg'
  ),
  User(
      name: 'Ali fouda',
      imageUrl:
      'assets/images/10.jpg'
  ),
  User(
      name: 'Joe mansour',
      imageUrl:
      'assets/images/11.jpg'
  ),
  User(
      name: 'Ahmed Tarek',
      imageUrl: 'assets/images/2.jpg'
  ),
  User(
      name: 'Sara Ahmed',
      imageUrl:
      'assets/images/3.jpg'
  ),
  User(
      name: 'Mahmoud Khaled',
      imageUrl:
      'assets/images/4.jpg'
  ),
  User(
      name: 'Yasmeen Salama',
      imageUrl:
      'assets/images/5.jpg'
  ),
  User(
      name: 'Abd alAziz',
      imageUrl:
      'assets/images/6.jpg'
  ),
  User(
      name: 'Marwa Atef',
      imageUrl:
      'assets/images/7.jpg'
  ),
  User(
      name: 'Sameer Ahmed',
      imageUrl:
      'assets/images/8.jpg'
  ),
  User(
      name: 'Sara Emad',
      imageUrl:
      'assets/images/9.jpg'
  ),
  User(
      name: 'Ali fouda',
      imageUrl:
      'assets/images/10.jpg'
  ),
  User(
      name: 'Joe mansour',
      imageUrl:
      'assets/images/11.jpg'
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl: 'assets/images/story_images/s1.jpg',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
    'assets/images/story_images/s2.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
    'assets/images/story_images/s3.jpg',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
    'assets/images/story_images/s4.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
    'assets/images/story_images/s5.jpg',
  ),
  Story(
    user: onlineUsers[2],
    imageUrl:
    'assets/images/story_images/s6.jpg',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
    'assets/images/story_images/s7.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
    'assets/images/story_images/s8.jpg',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
    'assets/images/story_images/s9.jpg',
    isViewed: true,
  ),
  Story(
    user: onlineUsers[7],
    imageUrl:
    'assets/images/story_images/s10.jpg',
  ),
];

final List<Post> posts = [
  Post(
    multi: false,
    user: currentUser,
    caption: 'look at those',
    timeAgo: '30m',
    imageUrl: 'assets/images/post_images/p1.jpg',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    multi: false,
    user: onlineUsers[5],
    caption: 'Please enjoy this beautiful nature and wonderful views that exist around you and leave everything aside',
    timeAgo: '2hr',
    imageUrl: 'assets/images/post_images/p2.jpg',
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    multi: false,
    user: onlineUsers[4],
    caption: 'this is a god boy ',
    timeAgo: '12hr',
    imageUrl: '',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    multi: true,
    user: onlineUsers[3],
    caption: 'Adventure',
    timeAgo: '20hr',
    imageUrl: 'assets/images/post_images/p4.jpg',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    multi: false,
    user: onlineUsers[0],
    caption: 'be beautiful see the Universe beautiful',
    timeAgo: '1d',
    imageUrl: '',
    likes: 482,
    comments: 37,
    shares: 9,
  ),
];
