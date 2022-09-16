// TrazoOSC - Server
// @ Sebastian Alies - www.sebastianalies.com // 

import oscP5.*;
import netP5.*;
import controlP5.*;

OscP5 oscP5;
NetAddress direccionRemota;
ControlP5 cp5;

int port = 8000;
String ip = "127.0.0.1";
PGraphics canvas;

int send;
int srtk = 1;
int r = 255, g = 255, b = 255, a = 255;
int W = 1024;
int H = 768;
int menuX = 0;
int menuY = H;
String imagen = "";

void setup() {
  size(1024, 848, P2D);
  canvas = createGraphics(W, H, P2D);
  clearDraw();
  sendOSC();
  controls();
}

void draw() {
  canvas.beginDraw();
  if (mousePressed == true) {
    canvas.stroke (r, g, b, a);
    canvas.strokeWeight(srtk);
    canvas.strokeCap(ROUND);
    canvas.line(mouseX, mouseY, pmouseX, pmouseY);
    sendMessage();
  }
  canvas.endDraw();
  image(canvas, 0, 0);
  menuGui();
}
