late final Map<int, String> _data;

void switchCaseMapPerfomanceTest() {
  _data = {for (final v in List.generate(999, (i) => i)) v: 'Item $v'};
  print('\nPerfomance test 1');
  _switch();
  _map();
  _for();

  print('\nPerfomance test 2');
  _switch();
  _map();
  _for();

  print('\nPerfomance test 3');
  _switch();
  _map();
  _for();
}

void _map() {
  final st = DateTime.now().microsecondsSinceEpoch;
  final result = _data[40];
  final et = DateTime.now().microsecondsSinceEpoch;
  print('Map: $result, ${et - st} microseconds');
}

void _switch() {
  final st = DateTime.now().microsecondsSinceEpoch;
  final result = _switchCase(40);
  final et = DateTime.now().microsecondsSinceEpoch;
  print('Switch: $result, ${et - st} microseconds');
}

void _for() {
  final st = DateTime.now().microsecondsSinceEpoch;
  final result = _forCase(40);
  final et = DateTime.now().microsecondsSinceEpoch;
  print('For: $result, ${et - st} microseconds');
}

String? _switchCase(int i) {
  switch (i) {
    case 0:
      return _data[0];
    case 1:
      return _data[1];
    case 2:
      return _data[2];
    case 3:
      return _data[3];
    case 4:
      return _data[4];
    case 5:
      return _data[5];
    case 6:
      return _data[6];
    case 7:
      return _data[7];
    case 8:
      return _data[8];
    case 9:
      return _data[9];
    case 10:
      return _data[10];
    case 11:
      return _data[11];
    case 12:
      return _data[12];
    case 13:
      return _data[13];
    case 14:
      return _data[14];
    case 15:
      return _data[15];
    case 16:
      return _data[16];
    case 17:
      return _data[17];
    case 18:
      return _data[18];
    case 19:
      return _data[19];
    case 20:
      return _data[20];
    case 21:
      return _data[21];
    case 22:
      return _data[22];
    case 23:
      return _data[23];
    case 24:
      return _data[24];
    case 25:
      return _data[25];
    case 26:
      return _data[26];
    case 27:
      return _data[27];
    case 28:
      return _data[28];
    case 29:
      return _data[29];
    case 30:
      return _data[30];
    case 31:
      return _data[31];
    case 32:
      return _data[32];
    case 33:
      return _data[33];
    case 34:
      return _data[34];
    case 35:
      return _data[35];
    case 36:
      return _data[36];
    case 37:
      return _data[37];
    case 38:
      return _data[38];
    case 39:
      return _data[39];
    case 40:
      return _data[40];
  }
  return null;
}

String? _forCase(int i) {
  for (var j = 0; j < _data.length; j++) {
    if (i == j) return _data[j];
  }
  return null;
}
