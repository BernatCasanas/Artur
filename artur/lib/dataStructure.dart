enum TypeActivity { PRESENCIAL, VOZ, NONE }

class Activity {
  TypeActivity type;
  int duration;
  String name;
  bool hasAR;

  Activity(this.type, this.duration, this.name, this.hasAR);
}
