class Player {
  void kick() {}
  void punch() {}
  void jump() {}
  void power() {}
}

//class StarPlayer extends Player {
class StarPlayer {
  void hide() {}
  void show() {}
}

class Ryu implements Player, StarPlayer {
  @override
  void jump() {
    // TODO: implement jump
    print("Average Jump");
  }

  @override
  void kick() {
    print("Ryu Kicks are Very Strong");
    // TODO: implement kick
  }

  @override
  void power() {
    print("Average Power but great technique");
    // TODO: implement power
  }

  @override
  void punch() {
    print("Average Punch");
    // TODO: implement punch
  }

  @override
  void hide() {
    // TODO: implement hide
  }

  @override
  void show() {
    // TODO: implement show
  }
}

class Ken implements Player {
  @override
  void jump() {
    print("JUmp is Average");
    // TODO: implement jump
  }

  @override
  void kick() {
    print("Average Kick");
    // TODO: implement kick
  }

  @override
  void power() {
    // TODO: implement power
    print("Average Power");
  }

  @override
  void punch() {
    print("Punch take lot of power");
    // TODO: implement punch
  }
}

class Honda {}

class Vega {}
