import 'package:facebookappui/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: const [
                Text(
                  'facebook',
                  style: TextStyle(
                    color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(width: 200,),
                FaIcon(FontAwesomeIcons.facebookMessenger, color: Color(0xFF384CFF),),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.camera, color: Color(0xFF384CFF),),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //create a post
          Container(
            height: 120,
            color: Colors.white,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(height: 45,
                width: 45,
                child: ProfilePicture(name: 'mine', radius: 31, fontsize: 21, img: profilePicURl,),),
                      SizedBox(width: 10,),
                      Expanded(child: Container(
                        height: 46,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(width: 1, color: Colors.grey[500]!,),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What\'s on your mind, John?',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[700],),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.video_call, color: Colors.red,),
                              SizedBox(width: 5,),
                              Text('Live'),
                            ],
                          ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[300],
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.photo, color: Colors.green,),
                            SizedBox(width: 5,),
                            Text('Photo'),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[300],
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.location_on, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text('Check in'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //stories
          Container(
            color: Colors.white,
            height: 200,
            margin: const EdgeInsets.only(top: 10,),
            padding: const EdgeInsets.only(top: 10, bottom: 10,),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                storyMaker(
                  storyImage: firstStory,
                  userImage: firstUserPic,
                  userName: 'James',
                ),
                storyMaker(
                  storyImage: secondStory,
                  userImage: secondUserPic,
                  userName: 'Olivia',
                ),
                storyMaker(
                  storyImage: thirdStory,
                  userImage: thirdUserPic,
                  userName: 'Emma',
                ),storyMaker(
                  storyImage: fourthStory,
                  userImage: fourthUserPic,
                  userName: 'Charlotte',
                ),
                storyMaker(
                  storyImage: fifthStory,
                  userImage: fifthUserPic,
                  userName: 'Amelia',
                ),

              ],
            ),

          ),
          //feeds
          myFeed(
            userName: 'Amelia',
            userImage: '',
            feedTime: '1 hr ago',
            feedText: firstFeedText,
            feedImage: firstFeedImage,
          ),
        ],
      ),
    );
  }
  Widget storyMaker({storyImage, userImage, userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: const EdgeInsets.only(right: 10,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: NetworkImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName, style: const TextStyle(color: Colors.white),),
            ],
          ),
        ),
          ),
    );

  }
  Widget myFeed({userName, userImage, feedTime, feedText, feedImage}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      ProfilePicture(name: 's', radius: 21, fontsize: 31, img: fifthUserPic,),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[900],
                          fontSize: 18,),),
                          const SizedBox(height: 3,),
                          Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                        ],
                      ),

                    ],
                    ),
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),

              ],
            ),
          ),
          const SizedBox(height: 10,),
          //post photo
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(feedImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //likes
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      myLike(),
                      Transform.translate(offset: Offset(-5, 0),
                        child: makeLove(),
                      ),
                      SizedBox(width: 5,),
                      Text('2.5K', style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                    ],
                  ),
                  Text('400 comments', style: TextStyle(fontSize: 13, color: Colors.grey[800]),),
                ],
            ),
          ),
          const SizedBox(height: 20,),
          //like, comment, and share
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             makeButton(
               true,
             ),
              reusable(
                iconColor: Colors.grey,
                which: Icons.chat,
                what: 'Comments',
              ),
              reusable(
                iconColor: Colors.grey,
                which: Icons.ios_share,
                what: 'Share',
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget myLike (){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, color: Colors.white, size: 12,),
      ),
    );
  }
}
Widget makeLove (){
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
    ),
    child: const Center(
      child: Icon(Icons.favorite, color: Colors.white, size: 12,),
    ),
  );
}


Widget makeButton(bool isActive ){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: GestureDetector(
      onTap: (){
       if (isActive == false){
          isActive = true;
       }else {
         isActive = false;
       }
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon( isActive ? Icons.thumb_up : Icons.thumb_up_alt_outlined, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            const SizedBox(width: 5,),
            Text('Like', style: TextStyle(color: isActive ? Colors.blue : Colors.grey),),
          ],
        ),
      ),
    ),
  );
}
Widget reusable({required String what, required IconData which, required Color iconColor}){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon( which , color:  iconColor , size: 18,),
          SizedBox(width: 5,),
          Text(what, style: TextStyle(color: Colors.grey),),
        ],
      ),
    ),
  );
}


// Container(
//   padding: const EdgeInsets.only(left: 29, right: 29, top: 15),
//   color: Colors.white,
//   // child: Row(
//   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //   children: const [
//   //     FaIcon(FontAwesomeIcons.home, color: Color(0xFF384CFF),),
//   //     Icon(Icons.people_outline),
//   //     Icon(Icons.person_outline),
//   //     Icon(Icons.videocam_outlined),
//   //     Icon(Icons.notifications_none),
//   //     Icon(Icons.menu),
//   //   ],
//   // ),
// ),
