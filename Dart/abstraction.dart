abstract class RBI {
  void HL();
  void PL();
  void call() {
    print('call method is call');
  }

  static void repoRate() {
    print('repo rate : +-4%');
  }
}

class SBI extends RBI {
  @override
  void HL() {
    print('SBI HL: 7%');
  }

  @override
  void PL() {
    print('SBI PL: 8');
  }
}

class Dart extends RBI {
  @override
  void HL() {
    print('Dart HL: 6%');
  }

  @override
  void PL() {
    print('Dart PL: 9');
  }
}

void main() {
  SBI s = SBI();
  s.HL();
  s.PL();
  s.call();
  RBI.repoRate();
  Dart d = Dart();
  d.HL();
  d.PL();
  d.call();
  RBI.repoRate();
}
