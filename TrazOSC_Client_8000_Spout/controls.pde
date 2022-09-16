void controls(){
  cp5 = new ControlP5(this); 
      
      cp5.addButton("clearDraw")
       .setValue(0)
       .setPosition(180, menuY-60)
       .setSize(50, 15)
       ;
       
       cp5.addButton("saveDraw")
       .setValue(0)
       .setPosition(105, menuY-60)
       .setSize(50, 15)
       ;
       
       cp5.addTextfield("imagen")
       .setValue("TrazoOSC")
       .setPosition(20,menuY-60)
       .setSize(80,15)
     .setFocus(true)

     ;


 
}
