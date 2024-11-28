// import 'dart:io';

import 'dart:io';

void main(List<String> args) {
  

  

  List<int> acceptedCoins = [10,25,5];
  var cola = 50;
  

  
  
  for(int i = 0; cola>0;i++){
    stdout.write("COla olish uchun 10, 25 , 5 centlik tanga kirgizing: ");
      String? tanga = stdin.readLineSync();
      int coin = int.parse(tanga!);
    acceptedCoins.forEach((element) { 
      if(element == coin){
        cola-=coin;
        if(cola < 0){
        print('Change Owed ${cola.abs()}');
        }
        else if(cola < 0){
          print("Amount due: $cola");
        }
        
      }
    });
  }
  


  
}