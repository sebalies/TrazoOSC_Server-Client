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
  text("TrazoVJ 1.1", menuX+900, menuY+30);
  textSize(10);
  fill(255);
  text("sebastián alíes - 2015", menuX+900, menuY+45);

  // TEXT
  textSize(11);
  fill(150);
  text("X " + mouseX, 20, 20);
  text("Y " + mouseY, 20, 35);
  textSize(10);
}
