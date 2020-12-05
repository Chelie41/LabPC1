#!/bin/bash
base64 --decode < mystery_img1.txt > mystery_img1.png
base64 --decode < mystery_img2.txt > mystery_img2.png
base64 < fcfm.png > fcfm_mystery.txt
base64 < msg.txt > msg_mystery.txt
