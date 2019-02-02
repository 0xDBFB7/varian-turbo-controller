#include <digitalWriteFast.h>

#define A_H 3 
#define A_L 9
#define B_H 4
#define B_L 10
#define C_H 5
#define C_L 11

#define AC_FREQ 850
#define SHOOT_THROUGH_DWELL 1 //microsecond
#define PWM_TWEAK 76 //microseconds - this could be alleviated via direct T/C register manipulation,
                     //but I couldn't be bothered.
#define RAMP_SPEED 60

void actuate_phase(bool state, int duty, int high_pin, int low_pin){
  if(state){
    digitalWriteFast(low_pin,0);
    delayMicroseconds(SHOOT_THROUGH_DWELL);
    digitalWriteFast(high_pin,1);
  }
  else{
    digitalWriteFast(high_pin,0);
    delayMicroseconds(SHOOT_THROUGH_DWELL);
    digitalWriteFast(low_pin,1);
  }
}

void phase_1(bool state, int duty){
  actuate_phase(state, duty, A_H, A_L);
}

void phase_2(bool state, int duty){
  actuate_phase(state, duty, B_H, B_L);
}

void phase_3(bool state, int duty){
  actuate_phase(state, duty, C_H, C_L);
}

void highz_phase(){
  digitalWriteFast(A_H,0);
  digitalWriteFast(A_L,0);
  digitalWriteFast(B_H,0);
  digitalWriteFast(B_L,1);
  digitalWriteFast(C_H,0);
  digitalWriteFast(C_L,0);
}

void setup() {
//  TCCR1B = TCCR1B & 0b11111000 | 2; //Switch to 31khz PWM 
//  TCCR2B = TCCR2B & 0b11111000 | 2;
  Serial.begin(115200);
  pinMode(A_H,OUTPUT);
  pinMode(A_L,OUTPUT);
  pinMode(B_H,OUTPUT);
  pinMode(B_L,OUTPUT);
  pinMode(C_H,OUTPUT);
  pinMode(C_L,OUTPUT);
}


void loop() {
  int current_speed = 0;
  int total = (((1.0/AC_FREQ)*1e6)-SHOOT_THROUGH_DWELL)/6.0;

  while(true){
    for(int i = 0; i < AC_FREQ/10; i++){ 
      phase_1(1,current_speed);
      delayMicroseconds(total);
      phase_3(0,current_speed);
      delayMicroseconds(total);
      phase_2(1,current_speed);
      delayMicroseconds(total);
      phase_1(0,current_speed);
      delayMicroseconds(total);
      phase_3(1,current_speed);
      delayMicroseconds(total);
      phase_2(0,current_speed);
      delayMicroseconds(total);
    }
    
    current_speed=100;
    //current_speed = constrain(current_speed,0,100);
    //highz_phase();
    //long pulse_time = pulseIn(A0,0,100);
  }
}
