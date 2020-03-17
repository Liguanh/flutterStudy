import 'package:event_bus/event_bus.dart';

EventBus eventBus = new EventBus();

class TransEvent{
  var text;
  TransEvent(this.text);
}

class TransEvent1{
  var text;
  TransEvent1(this.text);
}