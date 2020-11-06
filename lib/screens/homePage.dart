import 'package:flutter/material.dart';
import 'package:profile/widgets/DroairPage.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'dart:html' as html;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DroairPage(),
      appBar: AppBar(
        title: Text("CodeWithRafiq"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipOval(
                      child: Image(
                        image: NetworkImage(
                            'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.0-9/71087940_668659373544267_1445874210185412608_n.jpg?_nc_cat=103&ccb=2&_nc_sid=09cbfe&_nc_ohc=xnwvOxdWgRUAX_8UMsu&_nc_ht=scontent.fdac31-1.fna&oh=003a0d65a2912797322b3121ace805bc&oe=5FC8D646'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 600,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Hi there. Thanks for visiting my portfolio. I am  MD. Rafiqul Islam, Student of Computer technology on Comilla polytechnic.I am interested in creating something new using the latest technologies. I always like to learn new technology and spreading out knowledge among others",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SingleSocialButton(
                          onnTap: () async {
                            const urls =
                                "https://www.facebook.com/codewithrafiq";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls = "https://twitter.com/codewithrafiq11";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://picklefeetgames.com/wp-content/uploads/2018/12/twitter-app-icon-transparent-17-2-300x300.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls =
                                "https://www.linkedin.com/in/codewithrafiq/";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://icons-for-free.com/iconfiles/png/512/linked+linkedin+logo+social+icon-1320191784782940875.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls =
                                "https://www.instagram.com/codewithrafiq/";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/600px-Instagram_icon.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls = "https://github.com/rafiquljislam";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://github.githubassets.com/images/modules/logos_page/Octocat.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls = "https://codewithrafiq.blogspot.com/";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Blogger.svg/1200px-Blogger.svg.png',
                        ),
                        SizedBox(width: 10),
                        SingleSocialButton(
                          onnTap: () async {
                            const urls =
                                "https://www.pinterest.com/codewithrafiq0/_created/";
                            if (await canLaunch(urls))
                              await launch(urls);
                            else
                              // can't launch url, there is some error
                              throw "Could not launch $urls";
                          },
                          url:
                              'https://i.pinimg.com/originals/60/9e/1b/609e1bc80368c1a4cfd70dc0ae87f2de.png',
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SingleSocialButton extends StatelessWidget {
  final Function onnTap;
  final String url;
  const SingleSocialButton({this.url, this.onnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onnTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                color: Colors.white,
                offset: Offset(0, 1),
              ),
            ]),
        child: Image(
          image: NetworkImage(url),
        ),
      ),
    );
  }
}
