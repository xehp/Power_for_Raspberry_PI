import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(16,GPIO.OUT)

for x in range(10):
	print(x)
	print("LED on")
	GPIO.output(16,GPIO.HIGH)
	time.sleep(1)
	print("LED off")
	GPIO.output(16,GPIO.LOW)
	time.sleep(1)

while 1:
	GPIO.output(16,GPIO.HIGH)
	time.sleep(1)
	GPIO.output(16,GPIO.LOW)
	time.sleep(1)
