#include <ESP32_Servo.h>
#include <NewPing.h>
#include <WiFi.h>

const char* ssid = "SHOEB_ALI_06";
const char* password = "22446688";
String dataToSend = "";

WiFiServer server(80);

#define TRIGGER_PIN1  26
#define ECHO_PIN1     14
#define MAX_DISTANCE1 40

#define TRIGGER_PIN2  13
#define ECHO_PIN2     12
#define MAX_DISTANCE2 40

#define TRIGGER_PIN3  25
#define ECHO_PIN3     33
#define MAX_DISTANCE3 40

#define TRIGGER_PIN4  2
#define ECHO_PIN4     4
#define MAX_DISTANCE4 40

NewPing sonar1(TRIGGER_PIN1, ECHO_PIN1, MAX_DISTANCE1);
NewPing sonar2(TRIGGER_PIN2, ECHO_PIN2, MAX_DISTANCE2);
NewPing sonar3(TRIGGER_PIN3, ECHO_PIN3, MAX_DISTANCE3);
NewPing sonar4(TRIGGER_PIN4, ECHO_PIN4, MAX_DISTANCE3);

int pos = 0;
Servo myservo;
int Servomotor = 15;
bool direction = true ;

String dist1;
String dist2;
String dist3;
String dist4;
String dist5;
String dist6;
String dist7;
String dist8;

IPAddress staticIP(192, 168, 1, 10); 
IPAddress gateway(192, 168, 1, 1);
IPAddress subnet(255, 255, 255, 0);

void setup() {
  Serial.begin(115200);
  delay(1000);
  myservo.attach(Servomotor,500,2500);  
  WiFi.begin(ssid, password);
  WiFi.config(staticIP, gateway, subnet);

  Serial.println("Connecting to WiFi...");
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  server.begin();
  Serial.println("HTTP server started");
  
}

void loop() {
  WiFiClient client = server.available();
  while (client)
  // while (true)   
  {
    myservo.write(pos*1.111); 
    delay(1);

    if(direction == true )
    {
      pos++;
      if(pos >= 90 )
      {
        direction = false;
        pos = 89;
      }
      dist1 = String(sonar1.ping_cm());
      dist2 = String(sonar2.ping_cm());
      dist3 = String(sonar3.ping_cm());
      dist4 = String(sonar4.ping_cm());
      dataToSend = "[" + String(pos) + ":" + String(dist1) + "," + String(pos+90) + ":" + String(dist2) + "," + String(pos+180) + ":" + String(dist3) + "," + String(pos+270) + ":" + String(dist4) + "]";
      client.print(dataToSend);
      client.print("%");     
      // Serial.println(dataToSend);
    }

    else{
      pos--;
      if(pos <= 0 ){
        direction = true;
        pos = 1;
      }
      dist5 = String(sonar1.ping_cm());
      dist6 = String(sonar2.ping_cm());
      dist7 = String(sonar3.ping_cm());
      dist8 = String(sonar4.ping_cm());    
      dataToSend = "[" + String(pos) + ":" + String(dist5) + "," + String(pos+90) + ":" + String(dist6) + "," + String(pos+180) + ":" + String(dist7) + "," + String(pos+270) + ":" + String(dist8) + "]";
      client.print(dataToSend);
      client.print("%");     
      // Serial.println(dataToSend);      
    }
 }
}
