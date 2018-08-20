#TUTORIAL:  https://nrsyed.com/2018/02/12/get-pixel-rgb-value-from-webcam-video-in-opencv-c-and-python/


import cv2
import json

with open('ips', encoding='utf-8') as url_file:
	urls = json.loads(url_file.read())

 
url_l = urls['local']
url_t = urls['tunnel']

#capture_local
capture_l = cv2.VideoCapture(url_l)

#capture_tunnel
capture_t = cv2.VideoCapture(url_t)

#returns true if video stream reached
capture.isOpened()

#grabbed -> true if successfull
#frame -> pixel data
(grabbed, frame) = capture.read()

#returns details about the frame grabbed ( , , )
frame.shape


#Main Loop for image processing
while True:
    (grabbed, frame) = capture.read()
    cv2.imshow('Video', frame)

    if not grabbed:
        break

    keyVal = cv2.waitKey(1) & 0xFF
    if keyVal == ord('q'):
        break
    elif keyVal == ord('t'):
        snapshot = frame.copy()
        cv2.imshow('Snapshot', snapshot)

capture.release()
cv2.destroyAllWindows()