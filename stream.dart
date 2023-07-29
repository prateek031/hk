void main () async{
listen();
}
void listen(){
  getNumber().listen((data){
    print(data);
  });
  getNumberException()
  .listen((data){
    print(data);
  }).onError((error){
    print("error occured");
  });
  var sum=0;
  getNumber()
  .listen ((data){
    sum+= data;
  }) .onDone((){
    print(sum);
  });
}
Stream <int> getNumber()async*{
  for(var i=1; i<=3;i++){
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream <int> getNumberException()async*{
  for(var i=1; i<=3;i++){
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}