import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/pocoyo.dart';
import '../../network/api_proveder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PokemonApiProvider apiProvider = PokemonApiProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder<PokemonModel>(
        future: apiProvider.fetchPokemon(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            PokemonModel pokemon = snapshot.data!;
            return Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 0),
                  child: Image.asset(
                    'assets/images/pokemon.png',
                  ),
                ),
                const SizedBox(height: 30,),
                const SizedBox(
                  height: 50,
                  width: 380,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Buscar pokemon',
                      //labelStyle: Center(),
                    ),

                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns in the grid
                        mainAxisSpacing: 25, // Spacing between each row
                        crossAxisSpacing: 19, // Spacing between each column
                        childAspectRatio:
                            1, // Width to height ratio of each grid item
                      ),
                      children: <Widget>[
                        ...List.generate(
                            pokemon.pokemon.length,
                            (index) => Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                          end: Alignment.topCenter,
                                          begin: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFA5AFD),
                                            Color(0xffFC7CFF),
                                          ])),
                                      child: Column(
                                        children: [
                                          Image.network(pokemon.)
                                        ],
                                      ),
                                ))
                      ],
                    ),
                  ),
                )
              ],
            ));
          } else if (snapshot.hasError) {
            return Text("Error occurred: ${snapshot.error}");
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
