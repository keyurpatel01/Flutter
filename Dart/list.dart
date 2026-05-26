void main(List<String> args) {
  //<generics>
  // List<String> data = [1,2,3,4,5,6,'adf'];
  List data = [1,2,3,4,5,6,'adf'];
  print(data[0]);
  print(data[1]);
  print(data[2]);
  print(data[3]);
  print(data[4]);
  print(data[5]);

  List list = [1,1,1,'dart',456.456,false,'dart is used by flutter',4576.5467];
  print(list);
  print(list[0]);
  print(list.length); 
  list.add(2435);
  print(list);
  // list.addAll([]);
  print(list.contains(1));
  // print(list.elementAt(456));

  for(int i=0;i<list.length;i++){
    print(list[i]);
  }

  for(var i in list){
    print(i);
  }

  // list.add(1);
  // print(list);

  list.remove('dart');
  print(list);


  list.forEach((element) => print(element));

  list.forEach((element) {
    print(element);
  },);

  

  

  
}