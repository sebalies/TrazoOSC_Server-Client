// TrazoVJ 1.1
// @ Sebastian Alies - www.sebastianalies.com // 

import controlP5.*;
import spout.*;

ControlP5 cp5;
Spout server;

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
  server = new Spout(this);
  server.createSender("TrazoVJ 1.1");
  clearDraw();
  controls();
}

void draw() {
  canvas.beginDraw();
  if (mousePressed == true) {
    canvas.stroke (r, g, b, a);
    canvas.strokeWeight(srtk);
    canvas.strokeCap(ROUND);
    canvas.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendTexture(canvas);
  menuGui();
}
