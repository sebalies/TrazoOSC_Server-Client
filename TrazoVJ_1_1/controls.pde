void controls() {
  cp5 = new ControlP5(this); 

  cp5.addSlider("srtk")
    .setPosition(menuX+180, menuY+35)
    .setSize(80, 10)
    .setRange(1, 40)
    .setValue(20)
  ;

  cp5.addSlider("r")
    .setPosition(menuX+80, menuY+20)
    .setSize(80, 10)
    .setRange(1, 255)
    .setValue(150)
  ;

  cp5.addSlider("g")
    .setPosition(menuX+80, menuY+35)
    .setSize(80, 10)
    .setRange(1, 255)
    .setValue(150)
  ;

  cp5.addSlider("b")
    .setPosition(menuX+80, menuY+50)
    .setSize(80, 10)
    .setRange(1, 255)
    .setValue(150)
  ;

  cp5.addSlider("a")
    .setPosition(menuX+180, menuY+20)
    .setSize(80, 10)
    .setRange(1, 255)
    .setValue(255)
  ;

  cp5.addButton("clearDraw")
    .setValue(0)
    .setPosition(menuX+330, menuY+20)
    .setSize(50, 15)
    ;

  cp5.addButton("saveDraw")
    .setValue(0)
    .setPosition(menuX+495, menuY+20)
    .setSize(50, 15)
    ;

  cp5.addTextfield("imagen")
    .setValue("TrazoVJ")
    .setPosition(menuX+410, menuY+20)
    .setSize(80, 15)
    .setFocus(true)

    ;
}
