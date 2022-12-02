import 'package:flutter/material.dart';
import 'package:whats_app/single_chat_screen.dart';
import 'items_model.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SingleChat()),
          );
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(_list[index].image),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_list[index].name),
                      const Text(
                        "Hi",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
