#include "Relay.h"

// Constructor
Relay::Relay(int Pin, String strName) : relayPin(Pin), relayName(strName), relayState(RELAY_OFF)
{
  pinMode(relayPin, OUTPUT);
  digitalWrite(relayPin, RELAY_OFF);
}

void Relay::Off()
{
  digitalWrite(relayPin, RELAY_OFF);
  relayState = RELAY_OFF;
}
void Relay::On()
{
  digitalWrite(relayPin, RELAY_ON);
  relayState = RELAY_ON;
}
void Relay::Toggle()
{
  if ( IsOn() ) {
    Off();
  }
  else {
    On();
  }
}

String& Relay::Id()
{
  return relayName;
}

String Relay::getStringStatus() {
  String tmp = relayName;
  if (relayState == RELAY_ON)
    tmp += " =  ON";
  else
    tmp += " = OFF";
  return tmp;
}

bool Relay::IsOn() {
  return relayState == RELAY_ON;
}

MQTT_Relay::MQTT_Relay(int    Pin, 
                       String strName, 
                       String Topic,
                       SimpleTimer *pTimer) 
  : Relay(Pin, strName),  strTopic(Topic), Timer(pTimer)
{
}

bool MQTT_Relay::HandleMQTT(String& Topic, String& Payload)
{
  bool rc = false;
  if (Topic == strTopic)
  {
    rc = true;
    if (Payload == "On")
      On();
    if (Payload == "Off")
      Off();
    if (Payload == "Toggle")
      Toggle();
    if (Payload == "Disable")
    {
      Timer->disable(TimerId);
      Serial.println("Timer Disabled");
    }
    if (Payload == "Enable")
    {
      Timer->enable(TimerId);
      Serial.println("Timer Enabled");
    }
  }
  return rc;
}

void MQTT_Relay::TimerCallback()
{
  Toggle();
  Serial.println(getStringStatus() + " , Uptime: " + millis()/1000);
}

bool MQTT_Relay::StartTimer(int Interval)
{
  if (Timer)
  {
    TimerId = Timer->setInterval(Interval, std::bind(&MQTT_Relay::TimerCallback, this));
    return true;
  }
  else
  {
    Serial.println("No timer defined");
    return false;
  }
}

void MQTT_Relay::Disable()
{
  Timer->disable(TimerId);
} 


void MQTT_Relay::Enable()
{
  Timer->enable(TimerId);
} 
