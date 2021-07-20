#include <HID-Project.h>
#include <Keypad.h>
#include <ezButton.h>
#include <Adafruit_SSD1306.h>
#include <Fonts/FreeMonoBoldOblique12pt7b.h>

#define ENABLE_PULLUPS
#define NUMROTARIES 2

#define MEDIA_PLAY_PAUSE  0xCD
#define MEDIA_NEXT  0xB5
#define MEDIA_PREVIOUS  0xB6
#define MEDIA_VOLUME_MUTE 0xE2
#define MEDIA_VOLUME_UP 0xE9
#define MEDIA_VOLUME_DOWN 0xEA

Adafruit_SSD1306 display(128, 64);

const int buttonPin = 10;
const int mosfetPin = 8;

ezButton button(buttonPin);

int mosfetState = LOW;

struct rotariesdef {
  byte pin1;
  byte pin2;
  int ccwchar;
  int cwchar;
  volatile unsigned char state;
};

rotariesdef rotaries[NUMROTARIES] {
  {0,1,12,13,0},
  {5,4,14,15,0},
};

#define DIR_CCW 0x10
#define DIR_CW 0x20
#define R_START 0x0

#ifdef HALF_STEP
#define R_CCW_BEGIN 0x1
#define R_CW_BEGIN 0x2
#define R_START_M 0x3
#define R_CW_BEGIN_M 0x4
#define R_CCW_BEGIN_M 0x5
const unsigned char ttable[6][4] = {
  // R_START (00)
  {R_START_M,            R_CW_BEGIN,     R_CCW_BEGIN,  R_START},
  // R_CCW_BEGIN
  {R_START_M | DIR_CCW, R_START,        R_CCW_BEGIN,  R_START},
  // R_CW_BEGIN
  {R_START_M | DIR_CW,  R_CW_BEGIN,     R_START,      R_START},
  // R_START_M (11)
  {R_START_M,            R_CCW_BEGIN_M,  R_CW_BEGIN_M, R_START},
  // R_CW_BEGIN_M
  {R_START_M,            R_START_M,      R_CW_BEGIN_M, R_START | DIR_CW},
  // R_CCW_BEGIN_M
  {R_START_M,            R_CCW_BEGIN_M,  R_START_M,    R_START | DIR_CCW},
};
#else
#define R_CW_FINAL 0x1
#define R_CW_BEGIN 0x2
#define R_CW_NEXT 0x3
#define R_CCW_BEGIN 0x4
#define R_CCW_FINAL 0x5
#define R_CCW_NEXT 0x6

const unsigned char ttable[7][4] = {
  // R_START
  {R_START,    R_CW_BEGIN,  R_CCW_BEGIN, R_START},
  // R_CW_FINAL
  {R_CW_NEXT,  R_START,     R_CW_FINAL,  R_START | DIR_CW},
  // R_CW_BEGIN
  {R_CW_NEXT,  R_CW_BEGIN,  R_START,     R_START},
  // R_CW_NEXT
  {R_CW_NEXT,  R_CW_BEGIN,  R_CW_FINAL,  R_START},
  // R_CCW_BEGIN
  {R_CCW_NEXT, R_START,     R_CCW_BEGIN, R_START},
  // R_CCW_FINAL
  {R_CCW_NEXT, R_CCW_FINAL, R_START,     R_START | DIR_CCW},
  // R_CCW_NEXT
  {R_CCW_NEXT, R_CCW_FINAL, R_CCW_BEGIN, R_START},
};
#endif

const byte ROWS = 4; //four rows
const byte COLS = 3; //three columns


char keys[ROWS][COLS] = {
  {'0', '1', '2',},
  {'3', '4', '5',},
  {'6', '7', '8',},
  {'9', '*', '#',},
};

byte rowPins[ROWS] = {18, 19, 20, 21}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {16, 14, 15,}; //connect to the column pinouts of the keypad

Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup() {
  oledOn();
  
  Keyboard.begin();
  Consumer.begin();
  rotary_init();
  
  pinMode(mosfetPin, OUTPUT);
  button.setDebounceTime(50);
}

void mic() {
  Keyboard.press(KEY_F13);
}

void deaf() {
  Keyboard.press(KEY_F14);
}

void share() {
  Keyboard.press(KEY_F15);
}

void screenshot() {
  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press(KEY_PRINTSCREEN);
}

void fusion() {
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(KEY_F);
}

void simply() {
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(KEY_S);
}

void game() {
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(KEY_G);
}

void obs() {
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(KEY_O);
}

void spotify() {
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(KEY_M);
}

void volmute() {
  Consumer.write(MEDIA_VOLUME_MUTE);
}

void playpause() {
  Consumer.write(MEDIA_PLAY_PAUSE);
}

void obsrecord() {
  Keyboard.press(KEY_F16);
}


void loop() {
  char key = keypad.getKey();

  if (key) {
    
    switch (key) {
      case '0':
        fusion();
        break;
      case '1':
        mic();
        break;
      case '2':
        deaf();
        break;
      case '3':
        simply();
        break;
      case '4':
        game();
        break;
      case '5':
        share();
        break;
      case '6':
        obs();
        break;
      case '7':
        obsrecord();
        break;
      case '8':
        screenshot();
        break;
      case '9':
        spotify();
        break;
      case '*':
        volmute();
        break;
      case '#':
        playpause();
        break;
 
    }

    delay(100);
    Keyboard.releaseAll();
  }
  CheckAllEncoders();
  
  button.loop();

  if(button.isPressed()) {
    mosfetState = !mosfetState;
    digitalWrite(mosfetPin, mosfetState); 
  }
}

void rotary_init() {
  for (int i=0;i<NUMROTARIES;i++) {
    pinMode(rotaries[i].pin1, INPUT);
    pinMode(rotaries[i].pin2, INPUT);
    #ifdef ENABLE_PULLUPS
      digitalWrite(rotaries[i].pin1, HIGH);
      digitalWrite(rotaries[i].pin2, HIGH);
    #endif
  }
}


unsigned char rotary_process(int _i) {
   unsigned char pinstate = (digitalRead(rotaries[_i].pin2) << 1) | digitalRead(rotaries[_i].pin1);
  rotaries[_i].state = ttable[rotaries[_i].state & 0xf][pinstate];
  return (rotaries[_i].state & 0x30);
}

void CheckAllEncoders(void) {
  for (int i=0;i<NUMROTARIES;i++) {
    unsigned char result = rotary_process(i);
    if (result == DIR_CCW) {
      if (rotaries[i].ccwchar == 12){
        Consumer.write(MEDIA_PREVIOUS);
      }
      else {
        Consumer.write(MEDIA_VOLUME_DOWN);
      }
    };
    if (result == DIR_CW) {
      if (rotaries[i].cwchar == 13) {
        Consumer.write(MEDIA_NEXT);
      }
      else {
        Consumer.write(MEDIA_VOLUME_UP);
      }
    };
  }
}

void oledOn() {
  delay(100);

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  display.clearDisplay();
  display.setTextColor(WHITE);
  display.setRotation(0);
  display.setTextWrap(false);
  display.dim(0);

  display.clearDisplay();
  display.setFont(&FreeMonoBoldOblique12pt7b);
  display.setTextSize(0);
  display.setCursor(20, 28);
  display.println("Macro");
  display.setCursor(35, 45);
  display.println("Board");
  display.display();
}

void oledOff() {
  display.ssd1306_command(SSD1306_DISPLAYOFF);
}
