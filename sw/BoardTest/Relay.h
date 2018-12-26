#ifndef RELAY_H
#define RELAY_H

#include <Arduino.h>
#include "SimpleTimer.h"

#define RELAY_OFF HIGH
#define RELAY_ON  LOW
#define CYCLE_TIME 5000

class Relay
{
  private:
  int     relayPin;
  int     relayState;
  String  relayName;

  public:
  Relay(int Pin, String strName);

  void    Off();
  void    On();
  void    Toggle();
  bool    IsOn();

  String& Id();
  String  getStringStatus();
};


class MQTT_Relay : public Relay
{

private:
  String       strTopic;
  SimpleTimer  *Timer;
  int          TimerId;
  void         TimerCallback();

public:
  MQTT_Relay(int Pin, String strName, String Topic, SimpleTimer  *pTimer = NULL);
  
  bool HandleMQTT(String& Topic, String& Payload);
  bool StartTimer(int Interval);
  void Disable();
  void Enable();
  
};

#endif
