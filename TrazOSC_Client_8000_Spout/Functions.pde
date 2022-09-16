void oscEvent(OscMessage mensajeOSC) {
  if (mensajeOSC.addrPattern().equals("/Xpos"))
    posX = mensajeOSC.get(0).intValue(); 

  if (mensajeOSC.addrPattern().equals("/Ypos"))
    posY = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/Xppos"))
    pposX = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/Yppos"))
    pposY = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/r"))
    r = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/g"))
    g = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/b"))
    b = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/a"))
    a = mensajeOSC.get(0).intValue();  

  if (mensajeOSC.addrPattern().equals("/srtk"))
    srtk = mensajeOSC.get(0).intValue();
}

public void clearDraw() {
  canvas.beginDraw();
  canvas.lights();
  canvas.background(0);
  canvas.endDraw();
  image(canvas, 0, 0);
}

public void saveDraw() {
  canvas.save(cp5.get(Textfield.class, "imagen").getText()+ ".jpg");
  print("salvado");
}

public void menuGui() {
  // TEXT
  textSize(10);
  fill(150);
  text("posX "+posX, menuX+950, 20);  
  text("posY "+posY, menuX+950, 35); 

  text("R "+r, menuX+950, 60); 
  text("G "+g, menuX+950, 75); 
  text("B "+b, menuX+950, 90); 

  text("a "+a, menuX+950, 115); 
  text("srtk "+srtk, menuX+950, 130); 

  // SIGN
  textSize(11);
  fill(60, 150, 255);
  text("TrazOsc 1.1", menuX+900, 720);
  textSize(10);
  fill(160, 180, 0);
  text("CLIENT", menuX+900, 735);
  fill(255);
  text("sebastián alíes - 2015", menuX+900, 750);
}
