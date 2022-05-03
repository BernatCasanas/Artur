enum TypeActivity { PRESENCIAL, VOZ, NONE }

class Activity {
  TypeActivity type;
  int duration;
  String name;
  String description;
  bool hasAR;

  Activity(this.type, this.duration, this.name, this.hasAR, this.description);
}
