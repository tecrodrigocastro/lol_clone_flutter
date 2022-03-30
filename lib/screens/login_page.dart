import 'package:flutter/material.dart';
import 'package:lol_clone/screens/launcher_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/login.jpg"),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        height: 50,
                        width: 50,
                        image: AssetImage("images/l.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.help,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Text(
                    "Insira sua Conta Riot",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(height: 60),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      label: Text(
                        "NOME DE USUÁRIO",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      labelStyle: TextStyle(color: Colors.black54),
                      fillColor: Colors.grey[200],
                      filled: true,
                      focusColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      label: Text(
                        "SENHA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      labelStyle: TextStyle(color: Colors.black54),
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: ischecked,
                        onChanged: (bool? value) {
                          setState(() {
                            ischecked = value!;
                            print(ischecked);
                          });
                        },
                      ),
                      Text(
                        "Manter login",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LauncherScreen()));
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "NÃO CONSEGUE INICIAR SESSÃO?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "CRIAR CONTA",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
