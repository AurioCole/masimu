import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/components/card.dart';
import 'package:masimu_app/src/view/components/circle_item.dart';
import 'package:masimu_app/src/view/components/search_bar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        "Todas categorias", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: const Text(
                        "Cereais", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: const Text(
                        "Tuberculos", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: const Text(
                        "Citrinos", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: const Text(
                        "Frutas tropicais", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                    TextButton(
                      child: const Text(
                        "Verduras", 
                        style: TextStyle(
                          color: Color(0xff3D3D3D),
                          fontSize: 12, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: SearchField(),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/veget-3.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF39B54A))
                        ),
                        onPressed: (){}, 
                        child: const Text("Compre agora", style: TextStyle(color: Colors.white),)
                      ),
                    ],
                  ) , 
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Mais vendidos",
                      style: TextStyle(
                        color: Color(0xff3D3D3D),
                        fontSize: 12, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "Ver todos", 
                      style: TextStyle(
                        color: Color(0xff3D3D3D),
                        fontSize: 12, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleItem(),
                    CircleItem(),
                    CircleItem(),
                    CircleItem(),
                    CircleItem(),
                    CircleItem(),
                    CircleItem(),
                    CircleItem()
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Leguminosas",
                      style: TextStyle(
                        color: Color(0xff3D3D3D),
                        fontSize: 12, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "Ver todas", 
                      style: TextStyle(
                        color: Color(0xff3D3D3D),
                        fontSize: 12, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    CardItem(),
                    CardItem(),
                    CardItem()
                  ],
                ),
              )
            ],
          ) 
        ],
      ),
    );
  }
}