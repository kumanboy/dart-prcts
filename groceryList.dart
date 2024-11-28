import 'dart:io';

void main(List<String> args) {
  while(true){
    stdout.write("Items: ");
    String product = stdin.readLineSync() ?? "";
    Map <String,int>result = {};
    
    result.forEach((key, value) {
      if(product == key){
        key=product;
        value=1;
      }else{
        value++;
      }
    });
    print(result);

    
  
  }
  


}

// TODO grocery ishliman