# WiFiRelay - Wifi controlled dual relay
Dual relay controlled via WiFi. Uses ESP-07S module to allow external WiFi antenna.
Preliminary information 03 May 2017 - capturing project state at time of board order.

### Motivation
This project was motivated by a desire to control my pool lights from my home automation system. I first attempted to use a Sonoff wifi controlled module with a custom hacked firmware. This would have been successful except that the unit is housed in the metallic NEMA enclosure for the pool control hardware which acted as a Faraday cage, preventing the wifi signal from reaching the Sonoff unit.

This project uses an ESP-07 module containing the ubiquitous ESP8266. The advantage of the ESP-07S is that in addition to a WiFi antenna printed onto the PC board, it has a connector allowing a coax to an external antenna, which can then be mounted outside the enclosure.

### Features
- Built in power supply allows direct connection to AC mains (85 ~ 305VAC). No external adapter required.
- Two isolated, independantly controlled, normally open relay contacts rated at 10 amps each.
- Connector for external WiFi antenna allows unit to be mounted within a metal enclosure.
- Over the air software updates.
- Wifi control via MQTT subscription.

### Software
(https://github.com/n0dyjeff/WifiRelay-Tasmota)

### Availability
All the documentation is here, but if you're not interested in building your own, I've built up a few of these and offered them on [Amazon](https://www.amazon.com/N0DY-WiFi-Controlled-Dual-Relay/dp/B072MKV8ZM), [ebay](http://www.ebay.com/itm/NEW-Web-Controlled-Dual-Relay-120-240-V-Smart-Home-Internal-External-Antenna-/152649721279), and [Tindie](https://www.tindie.com/products/n0dyjeff/wi-fi-controlled-dual-relay-wext-antenna-jack/).

![alt text](https://github.com/n0dyjeff/WiFiRelay/blob/master/doc/Breakout.jpg "Relay Board")
