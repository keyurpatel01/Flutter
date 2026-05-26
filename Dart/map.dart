void main(List<String> args) {
  
  Map map ={
    1:'c',
    2:'c++',
    3:'java',
    'php':4,
    false:'dot net',
    6:'dart',
    1:'flutter'
  };
  print(map);
  print(map[1]);

  map.forEach((key, value) => print('key : $key value : $value'),);
}