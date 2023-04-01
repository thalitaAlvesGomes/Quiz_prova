import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _QuizApp();
}

class _QuizApp extends State<MyApp> {
  // This widget is the root of your application.
  String status = '';

   List<String> alternativas = ['Azul', 'Laranja', 'Amarelo', 'Cinza'];
    
   Color cor1 = Colors.white;
   Color cor2 = Colors.white;
   Color cor3 = Colors.white;
   Color cor4 = Colors.white;

  void escolha(String option){
  

    if (option == 'Azul'){
      setState(() {
        status = 'Resposta correta';
        cor1 = Colors.green;
      });
      
    }else if ((option == 'Laranja')){
      setState(() {
        status = 'Resposta errada';
        cor2 = Colors.red;
      });
    }else if ((option == 'Amarelo')){
      setState(() {
        status = 'Resposta errada';
        cor3 = Colors.red;
      });
    }else if ((option == 'Cinza')){
      setState(() {
        status = 'Resposta errada';
        cor4 = Colors.red;
      });
    }
    
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
          title: Center(child: Text('Quiz' )),
          
        ),
        body: Row(
          children: [
             Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:  Container(
                    child: Center(child: Text('Qual a cor do céu? - $status', style: TextStyle(color: Colors.white, fontSize: 22),)),
                    color: Colors.black,
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                  )
                  ),


                  Expanded(
                  child: GestureDetector(
                    onTap: () => escolha('Azul'),
                      child: Container(
                        child: Center(
                          child: Text('Azul', style: TextStyle(color:Colors.black, fontSize: 22)), ),  
                          color: cor1,
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(5),
                      ),
                    )
                    ),

                   Expanded(
                   child: GestureDetector(
                    onTap: () => escolha('Laranja'),
                      child: Container(
                        child: Center(
                          child: Text('Laranja', style: TextStyle(color: Colors.black, fontSize: 22)),  ),
                          color: cor2,
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(5),
                      ),
                    ),
                    ),

                    Expanded(
                    child: GestureDetector(
                      onTap: () => escolha('Amarelo'),
                      child: Container(
                        child: Center(
                          child: Text('Amarelo', style: TextStyle(color: Colors.black, fontSize: 22)),  ),
                          color: cor3,
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(5),
                      ),
                    ),
                    ),

                    Expanded(
                    child: GestureDetector(
                    onTap: () => escolha('Cinza'),
                      child: Container(
                        child: Center(
                          child: Text('Cinza', style: TextStyle(color: Colors.black, fontSize: 22)),  ),
                          color: cor4,
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(5),
                      ),
                    )
                    ),
                ]
              )
             )
          ]
        )
      )  
    );
  }
}
