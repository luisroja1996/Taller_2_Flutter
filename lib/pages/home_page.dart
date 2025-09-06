import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

import '../models/user_model.dart';
import 'perfil_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> users = [
    UserModel(name: "Emma Garcia", age: 17, category: "Menor de Edad", image:"https://i.pinimg.com/474x/cf/ef/0c/cfef0cb6580ded769722a082693e1b09.jpg", email: "emma@gmail.com",
      phone: "3001234567", address: "Cali, Colombia", bio: "Estudiante apasionada por la música y la lectura."),
    UserModel (name: "Rafael Alfonso Senegal Florez", age: 36, category: "Mayor de Edad", image:"https://i.imgur.com/f9DWaZc.jpeg", email: "rafael@gmail.com",
      phone: "3109876543", address: "Bogotá, Colombia", bio: "Ingeniero electrónico con interés en deportes extremos."),
    UserModel (name: "Gabriel Fernandez", age: 26, category: "Mayor de Edad", image:"https://i.pinimg.com/736x/00/f9/26/00f9261acd6be2b9b1e530e27fc942ac.jpg", email: "gabriel@gmail.com",
      phone: "3151112233", address: "Medellín, Colombia", bio: "Diseñador gráfico que ama el arte digital y la fotografía."),
    UserModel (name: "Isabella Palacios", age: 22, category: "Mayor de Edad", image:"https://us.123rf.com/450wm/andreypopov/andreypopov1209/andreypopov120900870/15512137-portrait-of-a-beautiful-brunette-woman-in-profile-with-downcast-eyes-and-a-serious-expression.jpg", email: "isabella@gmail.com",
      phone: "3174455667", address: "Barranquilla, Colombia", bio: "Desarrolladora de software y entusiasta del yoga."),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.image),
            ),
            title: Text(user.name),
            subtitle: Text(user.category),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PerfilHome(user: user),
                ),
              );
            },
          );
        },
      ),
    );
  }
}