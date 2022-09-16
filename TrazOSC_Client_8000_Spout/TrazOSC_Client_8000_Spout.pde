// TrazoOSC - Client / Spout
// @ Sebastian Alies - www.sebastianalies.com //

import spout.*;
import oscP5.*;
import netP5.*;
import controlP5.*;

OscP5 oscP5;
OscProperties properties;
ControlP5 cp5;

PGraphics canvas;
Spout server;

boolean clearDraw;
String imagen = "";
int srtk = 1;
int r ;
int g ;
int b ;
int a ;
int port = 8000;
int W = 1024;
int H = 768;
int menuX = 0;
int menuY = H;
int posX, posY, pposX, pposY;

void setup() {
  size(1024, 768, P2D);
  frameRate(120);
  canvas = createGraphics(W, H, P2D);
  clearDraw();
  server = new Spout(this);
  server.createSender("TrazoOSC");
  properties = new OscProperties();
  properties.setListeningPort(port);
  oscP5 = new OscP5(this, properties);
  controls();
}

void draw() {
  canvas.beginDraw();
  canvas.stroke (r, g, b, a);
  canvas.strokeWeight(srtk);
  canvas.line(posX, posY, pposX, pposY);
  canvas.endDraw();
  image(canvas, 0, 0);
  server.sendTexture(canvas);
  menuGui();
}
