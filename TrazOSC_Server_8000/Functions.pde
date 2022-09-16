public void clearDraw() {
  canvas.beginDraw();
  canvas.background(0);
  canvas.endDraw();
  image(canvas, 0, 0);
}

public void saveDraw() {
  canvas.save(cp5.get(Textfield.class, "imagen").getText()+ ".jpg");
  print("salvado");
}

void sendOSC() {
  oscP5 = new OscP5(this, port); //-->inicialización del objeto
  direccionRemota = new NetAddress(ip, port); //-->Entrada: messages de entrada por el port especificado
}

void send() {
  sendOSC();
}

void sendMessage() {
  OscMessage message1 = new OscMessage("/Xpos");
  OscMessage message2 = new OscMessage("/Ypos");
  OscMessage message3 = new OscMessage("/Xppos"); 
  OscMessage message4 = new OscMessage("/Yppos"); 
  OscMessage message5 = new OscMessage("/r"); 
  OscMessage message6 = new OscMessage("/g"); 
  OscMessage message7 = new OscMessage("/b"); 
  OscMessage message8 = new OscMessage("/a");
  OscMessage message9 = new OscMessage("/srtk");

  message1.add(mouseX);
  message2.add(mouseY);
  message3.add(pmouseX);
  message4.add(pmouseY);
  message5.add(r);
  message6.add(g);
  message7.add(b);
  message8.add(a);
  message9.add(srtk);

  oscP5.send(message1, direccionRemota);
  oscP5.send(message2, direccionRemota);
  oscP5.send(message3, direccionRemota);
  oscP5.send(message4, direccionRemota);
  oscP5.send(message5, direccionRemota);
  oscP5.send(message6, direccionRemota);
  oscP5.send(message7, direccionRemota);
  oscP5.send(message8, direccionRemota);
  oscP5.send(message9, direccionRemota);
}

void menuGui() {
  // BACK MENU
  stroke(0);
  fill(20);
  rect(menuX+0, H, W, 80);
  fill(255);
  rect(menuX+0, H, W, 2);

  // STROKE
  stroke(r, g, b, 255);
  fill(r, g, b, a);
  ellipse(40, menuY+40, srtk, srtk);

  // SIGN
  textSize(11);
  fill(60, 150, 255);
  text("TrazOsc 1.1", menuX+900, menuY+30);
  textSize(10);
  fill(200, 40, 40);
  text("SERVER", menuX+900, menuY+45);
  fill(255);
  text("sebastián alíes - 2015", menuX+900, menuY+60);

  // TEXT
  textSize(11);
  fill(150);
  text("X " + mouseX, 20, 20);
  text("Y " + mouseY, 20, 35);
  textSize(10);
  text("port 8000", menuX+590, menuY+65);
}
