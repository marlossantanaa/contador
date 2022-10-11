import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void message(){
  if(isVazio == 0){
    print( 'Vazio');
  }else if(isCheio == 30){
    print('Lotado');
  }
}

  void decrement() {
    setState(() {
      contador --;
    });
    print(contador);
  }

  void  increment() {
  setState(() {
    contador ++;

  });
  print(contador);
  }
  bool get isVazio => contador ==0;
  bool get isCheio => contador ==5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: isCheio ? Colors.red :Colors.white  ,

      body: Container(

        /*decoration: BoxDecoration(
        image:DecorationImage(
          image:AssetImage(
              'Images/img2.png'
          ),
          fit: BoxFit.scaleDown
        )
      ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Text(
              isCheio?'Lotado ':'Pode entrar!'  ,

              style:  TextStyle(
                color: isCheio ? Colors.white :Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              isVazio?'Vazio':''  ,
              style:  TextStyle(
                color: isCheio ? Colors.white :Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                '$contador',
                style:  TextStyle(
                    color:  isCheio ? Colors.white :Colors.black,
                    fontSize: 100,
                    fontWeight: FontWeight.w700
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                TextButton(
                  onPressed: isVazio ? null: decrement,
                  style: TextButton.styleFrom(
                      foregroundColor: isVazio ? Colors.red.withOpacity(0.4) :Colors.white,
                      backgroundColor: isVazio ? Colors.red.withOpacity(0.9) :Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      fixedSize: const Size(100, 100),
                      //definindo o tamanho fixo do botao
                      shadowColor: Colors.red
                  ),
                  child:  Text( isVazio?' Vazio ': 'Saiu',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )
                  ),
                ),

                const SizedBox(width: 24), // separando os botões

                TextButton(onPressed: isCheio ? null : increment,
                    style: TextButton.styleFrom(
                        foregroundColor:isCheio ?Colors.green.withOpacity(1.0) : Colors.green,
                        backgroundColor:isCheio ? Colors.black.withOpacity(0.4) : Colors.black,
                        fixedSize: const Size(100, 100),
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        )
                    ),
                    child: Text(isCheio? 'Lotado':'Entrou ',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16

                        )
                    )
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }

}
