import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'items_model.dart';
import 'map_screen.dart';

class SingleChat extends StatefulWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  final List<Items> _list = [
    Items("Mohammed",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSPAQ0D1r2tLq6zx1NnKpfyNS-IKjRmMqt6KIme_9MJw&s"),
    Items("Ahmad",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEkfbeXWm0SFrqKFMtzK9kpjjTlH_apHHk6HMZdFUxnw&s"),
    Items("Ali",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1rBzr2J4EIVf0pkBOk3Z3EoV1o4GltSxSuL_MsYuH&s"),
    Items("Mahmood",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo8aUCJAlw4t5Y57nh_6C9qbMuKxQFpJpvaIW6quxmrQ&s"),
    Items("Khalil",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpoulWkXToe7C26n1VI2oJBtzXKnPMRm_ZM2E5k4soEw&s"),
    Items("Sameer",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgDIiP-Fxiwd7D1i6Gj9uzT11KYwa0Ndjng5O8z4SPHw&s"),
    Items("Raed",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe3h1T8YxSQ6XyZTx23DUVDwiTEQUVxd2aq61jIyFC&s"),
    Items("Osama",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWV-MX288rPEkBE1EXXujjqBYV9QJc4GAhy9t29QPn9Q&s"),
    Items("Anas",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe2rbrl1sAhB3t7GZKhFOEm8eVJkbY2rhUc_UxJaV9RQ&s"),
    Items("Hamza",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwolB8Vh0k6W0Z75Cw4JEr01oXzraIvLRbaw&usqp=CAU"),
    Items("Saif",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUhra_BAgvOplkv-Ppfg4UGYJ41Iv_rsns7A&usqp=CAU"),
    Items("Kadir",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUhra_BAgvOplkv-Ppfg4UGYJ41Iv_rsns7A&usqp=CAU"),
  ];
  var index = 0;


  late File? _image = null;
  final picker = ImagePicker();

  getImage(ImageSource imageSource) async {
    PickedFile? imageFile = await picker.getImage(source: imageSource);
    if (imageFile == null) return;
    setState(
          () {
        _image = File(imageFile.path);
      },
    );
  }

  void showOptionChooser() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text("Please Choose"),
          actions: [
            TextButton(
              child: Column(
                children: const [
                  Icon(Icons.camera_alt),
                  Text('camera'),
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
                getImage(ImageSource.camera);
              },
            ),
            const SizedBox(width: 20,),
            TextButton(
              child:Column(
                children: const [
                  Icon(Icons.photo),
                  Text('Gallery'),
                ],
              ),
              onPressed: () {
                Navigator.pop(context);
                getImage(ImageSource.gallery);
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(_list[index].image),
              maxRadius: 23,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              _list[index].name,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.video_call_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/wallpaper.jpg'), fit: BoxFit.cover),
            ),
            //chats bar is down
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.grey,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MapScreen()),
                            );
                          },
                          child: const Icon(
                            Icons.add_location,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: InkWell(
                          onTap: () {
                            showOptionChooser();
                          },
                          child: const Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: TextField(
                        //controller:  _textExxxditingController,
                        decoration: InputDecoration(
                          //fillColor: Colors.grey,
                          filled: true,
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: on_pressed,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      child: const Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final TextEditingController _textExxxditingController=TextEditingController();

  on_pressed(){

  }
}
