
char data_send[] = "TungNV send \n";
String valString = "";
  
void setup() {
  // initialize serial:
  Serial.begin(115200);
  Serial.println("READY!");
}

void loop() 
{
//  int bytesSent = Serial.write(data_send); //send the string and return the length of the string.
//  delay(1000);  
}

void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
//    Serial.println(inChar);/
    if (isAlphaNumeric(inChar)){
      valString += (char)inChar;
    }
    if(inChar == '\n'){
      Serial.print("valString = "); Serial.println(valString);
      analyze(valString);
      valString = "";
    }
  }
}

void analyze(String valString){
  int indexLeft;
  int indexRight;
  String strVerticalLeft = "";
  String strHorizonalLeft = "";
  String strVerticalRight = "";
  String strHorizonalRight = "";
  for (int i = 0;i < valString.length(); i++) {    
    if (valString[i] == 'P'){
      indexLeft = i;
//      Serial.print("indexLeft = "); Serial.println(indexLeft);/
    }
    if (valString[i] == 'S'){
      indexRight = i;
//      Serial.print("indexRight = "); Serial.println(indexRight);/
    }
  }
  if (valString[0] == 'W'){
    for (int i=1; i<indexLeft; i++) {
      strVerticalLeft += (char)valString[i];
    }
    for (int i=indexLeft+1; i<valString.length(); i++) {
      strHorizonalLeft += (char)valString[i];
    }
    Serial.print("strVerticalLeft = "); Serial.println(strVerticalLeft);
    Serial.print("strHorizonalLeft = "); Serial.println(strHorizonalLeft);
  }
  if (valString[0] == 'Q'){
    for (int i=1; i<indexLeft; i++) {
      strVerticalRight += (char)valString[i];
    }
    for (int i=indexLeft+1; i<valString.length(); i++) {
      strHorizonalLeft += (char)valString[i];
    }
    Serial.print("strVerticalRight = "); Serial.println(strVerticalRight);
    Serial.print("strHorizonalRight = "); Serial.println(strHorizonalRight);
  }
}
