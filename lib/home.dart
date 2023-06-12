import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => Home();
}

class Home extends State<MyHomePage> {
  bool isChanged = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'School',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Jose Augusto"),
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Text(
                  "JA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            actions: [
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Minhas Estatisticas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.list_alt),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Minhas Notas",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.check),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Concluídas",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Configurações",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Tema escuro",
                              style: TextStyle(fontSize: 18),
                            )),
                            Switch(
                                value: isChanged,
                                onChanged: (value) {
                                  setState(() {
                                    isChanged = !isChanged;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
