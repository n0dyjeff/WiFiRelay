// Board test code for WiFi Pool Light controller board
// On a 1 second cycle
//    - Turn on Relay 1
//    - Write "Relay 1" to serial
//    - Delay 1 second
//    - Turn on Relay 2
//    - Write "Relay " to serial
//    - Repeat

//Requires PubSubClient found here: https://github.com/knolleary/pubsubclient
#include <PubSubClient.h>
#include <ESP8266WiFi.h>
#include <SimpleTimer.h>
#include "Relay.h"

//EDIT THESE FILES TO MATCH YOUR SETUP
#include "PrivateWifi.h"
#include "PrivateMQTT.h"

#define RELAY_1_PIN 5          // This is NodeMCU D2
#define RELAY_2_PIN 4          // This is NodeMCU D1
#define CYCLE_TIME  5000       // change state every 5000 milliseconds

void mqtt_callback(char* topic, byte* payload, unsigned int length);
void reconnect();
String macToStr(const uint8_t* mac);

WiFiClient    wifiClient;
PubSubClient  client(wifiClient);
SimpleTimer   timer;
MQTT_Relay    Relay_1(RELAY_1_PIN, "Relay 1", "test/Relay1", &timer);
MQTT_Relay    Relay_2(RELAY_2_PIN, "Relay 2", "test/Relay2", &timer);
char*         relayTopic = "test/#";

void setup() {

  //start the serial line for debugging
  Serial.begin(115200);
  delay(100);
  
  //start wifi subsystem
  WiFi.begin(WIFI_SSID, WIFI_PW);
  //wait a bit before starting the main loop
  delay(2000);

  Serial.println("Starting ESP-07 Pool Light Controller Test");

  //attempt to connect to the WIFI network and then connect to the MQTT server
  reconnect();
  Relay_1.StartTimer(CYCLE_TIME);
  Relay_2.StartTimer(CYCLE_TIME * 2);
}

void loop(){

  //reconnect if connection is lost
  if (!client.connected() && WiFi.status() == 3) {reconnect();}

  timer.run();

  //maintain MQTT connection
  client.loop();

  //MUST delay to allow ESP8266 WIFI functions to run
  delay(10); 
}

void mqtt_callback(char* topic, byte* payload, unsigned int length) {

  //convert topic to string to make it easier to work with
  String topicStr = topic;
  String strPayload;
  for (int i = 0; i < length; ++i)
  {
    strPayload += (char)payload[i];
  }

  //Print out some debugging info
  Serial.print("Callback update...");
  Serial.print("Topic: ");
  Serial.println(topicStr);

  if (Relay_1.HandleMQTT(topicStr, strPayload))
  {
    Serial.println(Relay_1.getStringStatus());
  }
  if (Relay_2.HandleMQTT(topicStr, strPayload))
  {
    Serial.println(Relay_2.getStringStatus());
  }
  if (topicStr == "test/Timer")
  {
    if (strPayload == "Disable")
    {
//      timer.disable(TimerId);
      Serial.println("Timer Disabled");
    }
    if (strPayload == "Enable")
    {
//      timer.enable(TimerId);
      Serial.println("Timer Enabled");
    }
    if (strPayload == "Toggle")
    {
 //     timer.toggle(TimerId);
      Serial.println("Timer Toggled");
    }
  }

  //turn the light on if the payload is '1' and publish to the MQTT server a confirmation message
  if(payload[0] == '1'){
    Relay_1.On();
    client.publish("/test/confirm", "1");
  }

  //turn the light off if the payload is '0' and publish to the MQTT server a confirmation message
  else if (payload[0] == '0'){
    Relay_1.Off();
    client.publish("/test/confirm", "0");
  }
}
void reconnect() {

  //attempt to connect to the wifi if connection is lost
  if(WiFi.status() != WL_CONNECTED){
    //debug printing
    Serial.print("\nConnecting to ");
    Serial.println(WIFI_SSID);

    //loop while we wait for connection
    while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
    }

    //print out some more debug once connected
    Serial.println("");
    Serial.println("WiFi connected");  
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
  }

  client.setServer(MQTT_SERVER, MQTT_PORT);
  client.setCallback(mqtt_callback);

  //make sure we are connected to WIFI before attemping to reconnect to MQTT
  if(WiFi.status() == WL_CONNECTED){
  // Loop until we're reconnected to the MQTT server
    while (!client.connected()) {
      Serial.print("Attempting MQTT connection...");

      // Generate client name based on MAC address and last 8 bits of microsecond counter
      String clientName;
      clientName += "esp8266-";
      uint8_t mac[6];
      WiFi.macAddress(mac);
      clientName += macToStr(mac);

      //if connected, subscribe to the topic(s) we want to be notified about
      if (client.connect((char*) clientName.c_str(), MQTT_USER, MQTT_PW)) {
        Serial.println("\tMQTT Connected");
        client.subscribe(relayTopic);
      }

      //otherwise print failed for debugging
      else{
        Serial.println("\tFailed."); 
        abort();
      }
    }
  }
}

//generate unique name from MAC addr
String macToStr(const uint8_t* mac){

  String result;

  for (int i = 0; i < 6; ++i) {
    result += String(mac[i], 16);

    if (i < 5){
      result += ':';
    }
  }

  return result;
}
