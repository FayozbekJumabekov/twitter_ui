import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_ui/model/tweet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<String> list = [];

  List<TweetModel> items = [

    TweetModel(
        userImage: "assets/images/accountPic.jpeg",
        userName: "Stefan Johnson",
        nickName: "@brain12sdfwegwf5",
        tweetTime: "2h",
        contentImage: "assets/images/im_user1.jpg",
        textContent:
        "UXR/UX: You can only bring one item to a remote #island to assist your #research of native use of tools and usability. What do you bring? #TellMeAboutYou. He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.",
        subContent: "UXR/UX: You can only bring one item to a remote #island to assist your #research of #native use of tools and usability. What do you bring? #TellMeAboutYou.",
        commentNumber: 154,
        retweetNumber: 258,
        likeNumber: 11478,
        actionIcon: Icon(Icons.favorite,size: 15,),
        actionType: "liked",
        actionUserNameList: ["John","Bob","Alex","Harry"], showSubContent: true
    ),
    TweetModel(
        userImage: "assets/images/im_user2.jpeg",
        userName: "Caren Khan",
        nickName: "@carena14",
        tweetTime: "1h",
        textContent:
        "Kobe’s passing is really sticking w/me in a way I didn’t expect. He was an #icon, the kind of person who wouldn’t die this way. My wife compared it to #Princess Di’s accident. But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
        subContent: "Kobe’s passing is really sticking w/me in a way I didn’t expect. He was an #icon, the kind of person who wouldn’t die this #way.",
        commentNumber: 14,
        retweetNumber: 45,
        likeNumber: 118,
        actionIcon: Icon(CupertinoIcons.arrow_2_squarepath,size: 12,),
        actionType: "retreeved",
        actionUserNameList: ["John","Bob","Alex",], showSubContent: true
    ),
    TweetModel(
        userImage: "assets/images/im_user4.jpeg",
        userName: "Lisa Taylor",
        nickName: "@LizMorgan",
        tweetTime: "6h",
        contentImage: "assets/images/im_user2.jpeg",
        textContent:
        "Name a show where the lead character is the worst #character on the show I’ll get Sabrina Spellman. But the end can happen for anyone at any #time, & I can’t help but think of anything else lately.",
        subContent: "Name a show where the lead #character is the worst character on the show I’ll get Sabrina Spellman",
        commentNumber: 541,
        retweetNumber: 10,
        likeNumber: 568,
        actionIcon: Icon(Icons.favorite,size: 15,),
        actionType: "liked", showSubContent: true,
    ),
    TweetModel(
        userImage: "assets/images/accountPic.jpeg",
        userName: "Brain Hill",
        nickName: "@brain12sdfwegwf5",
        tweetTime: "2h",
        contentImage: "assets/images/im_user1.jpg",
        textContent:
        "UXR/UX: You can only bring one item to a remote #island to assist your #research of native use of tools and usability. What do you bring? #TellMeAboutYou. He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.",
        subContent: "UXR/UX: You can only bring one item to a remote #island to assist your #research of #native use of tools and usability. What do you bring? #TellMeAboutYou.",
        commentNumber: 154,
        retweetNumber: 258,
        likeNumber: 11478,
        actionIcon: Icon(Icons.favorite,size: 15,),
        actionType: "liked",
        actionUserNameList: ["John","Bob","Alex","Harry"], showSubContent: true
    ),
    TweetModel(
        userImage: "assets/images/im_user2.jpeg",
        userName: "Caren Khan",
        nickName: "@carena14",
        tweetTime: "1h",
        textContent:
        "Kobe’s passing is really sticking w/me in a way I didn’t expect. He was an #icon, the kind of person who wouldn’t die this way. My wife compared it to #Princess Di’s accident. But the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
        subContent: "Kobe’s passing is really sticking w/me in a way I didn’t expect. He was an #icon, the kind of person who wouldn’t die this #way.",
        commentNumber: 14,
        retweetNumber: 45,
        likeNumber: 118,
        actionIcon: Icon(CupertinoIcons.arrow_2_squarepath,size: 12,),
        actionType: "retreeved",
        actionUserNameList: ["John","Bob","Alex",], showSubContent: true
    ),
    TweetModel(
      userImage: "assets/images/im_user4.jpeg",
      userName: "Lisa Taylor",
      nickName: "@LizMorgan",
      tweetTime: "6h",
      contentImage: "assets/images/im_user2.jpeg",
      textContent:
      "Name a show where the lead character is the worst #character on the show I’ll get Sabrina Spellman. But the end can happen for anyone at any #time, & I can’t help but think of anything else lately.",
      subContent: "Name a show where the lead #character is the worst character on the show I’ll get Sabrina Spellman",
      commentNumber: 541,
      retweetNumber: 10,
      likeNumber: 568,
      actionIcon: Icon(Icons.favorite,size: 15,),
      actionType: "liked", showSubContent: true,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/im_profil.jpeg"),
            child: Align(
              alignment: Alignment(0.8, -0.8),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Image(
          height: 30,
          width: 30,
          image: AssetImage("assets/images/TwitterLogo.png"),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage("assets/images/starIcon.png"),
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            /// # Post
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context,index){
                return   postTweet(items[index])
                ;
              }),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_alt,color: Colors.black,), label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search,color: Colors.black,), label: '',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell,color: Colors.black,), label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline,color: Colors.black,), label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Image(
        height: 22,
          width: 23,
        fit: BoxFit.cover,
        image: AssetImage("assets/images/add_icon.png"),
      ),

      ),
    );
  }

  Container postTweet(TweetModel item) {
    return Container(
           width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// # Last reaction
                (item.actionUserNameList != null) ? Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      item.actionIcon!,
                      SizedBox(width: 8,),
                      (item.actionUserNameList!.length >=2) ? Text("${item.actionUserNameList?.elementAt(item.actionUserNameList!.length-2)} and ${item.actionUserNameList!.last} ${item.actionType}",style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1,),fontSize: 15),) :  Text("${item.actionUserNameList!.last} ${item.actionType}",style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1,),fontSize: 15),)

                    ],
                  ),
                ) : SizedBox.shrink(),

                /// # Post Section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Account Profile Image
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(item.userImage),
                        ),
                      ],
                    ),

                    /// Post Tweet
                    Expanded(
                        child: Theme(
                          data: ThemeData().copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                      title: Row(
                          children: [
                            /// # Account Name
                            Flexible(
                              child: Text(
                                item.userName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    letterSpacing: 0.5),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image(
                              height: 20,
                              width: 20,
                              image: AssetImage("assets/images/checkIcon.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                                child: Text(item.nickName,
                                    style: TextStyle(
                                        color: Color.fromRGBO(104, 118, 132, 1),
                                        overflow: TextOverflow.ellipsis))),
                            Text(
                              "•${item.tweetTime}",
                              style: TextStyle(
                                  color: Color.fromRGBO(104, 118, 132, 1)),
                            )
                          ],
                      ),
                      subtitle: (item.showSubContent) ? Container(
                          child: RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),
                              children: List.generate(
                                  item.subContent.split(" ").length,(index) => (item.subContent.split(" ").elementAt(index).startsWith("#")) ?
                              TextSpan( text :"${item.subContent.split(" ").elementAt(index).toString()} ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 15)) :
                              TextSpan( text :"${item.subContent.split(" ").elementAt(index).toString()} ",style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.w400,fontSize: 15))
                              )

                          )
                          ),
                      ) : null,
                      onExpansionChanged: (change){
                          setState(() {
                            item.showSubContent = !item.showSubContent;
                          });
                      },
                      children: [
                          /// # content Text
                          Container(
                            padding: EdgeInsets.only(bottom: 10,left: 15),
                            child: RichText(text: TextSpan(
                              style: TextStyle(color: Colors.black,fontSize: 16),
                              children: List.generate(

                                  item.textContent.split(" ").length,(index) => (item.textContent.split(" ").elementAt(index).startsWith("#")) ?
                              TextSpan( text :"${item.textContent.split(" ").elementAt(index).toString()} ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w400,fontSize: 15)) :
                              TextSpan( text :"${item.textContent.split(" ").elementAt(index).toString()} ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15))
                              )

                            )
                            )

                          ),

                          /// #  Content Image
                          if(item.contentImage != null)
                          Container(
                            padding: EdgeInsets.only(left: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                image: AssetImage(item.contentImage!)
                            ),
                          ),
                          ),

                          /// Action Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  elevation: 0
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.chat_bubble,
                                  color: Color.fromRGBO(104, 118, 132, 1),
                                  size: 18,
                                ),
                                label: Text(item.commentNumber.toString(),style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1),),),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    elevation: 0
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.arrow_2_squarepath,
                                  color: Color.fromRGBO(104, 118, 132, 1),
                                  size: 18,
                                ),
                                label: Text(item.retweetNumber.toString(),style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1),),),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    elevation: 0
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.heart,
                                  color: Color.fromRGBO(104, 118, 132, 1),
                                  size: 18,
                                ),
                                label: Text(item.likeNumber.toString(),style: TextStyle(color: Color.fromRGBO(104, 118, 132, 1),),),
                              ),
                              Container(
                                  width: 40,
                                  child: Icon(CupertinoIcons.share,color: Color.fromRGBO(104, 118, 132, 1),size: 18,)),
                            ],
                          )
                      ],
                    ),
                        ))
                  ],
                ),
                (items.last != item) ? Divider() : SizedBox.shrink(),
              ],
            ),
          );
  }
}
