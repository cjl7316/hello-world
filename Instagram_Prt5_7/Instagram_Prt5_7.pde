boolean PicLoaded = false;
boolean Grayscale = false;
boolean Effect1 = false;
boolean Effect2 = false;
boolean Effect3 = false;
int picWidth = 0;
int picHeight =0;
PImage img;

void setup() 
{
  size(800, 480);
  background(185);
  textAlign(LEFT);
  textSize(16);
      img = loadImage("Cole_Running.JPG");
}

void draw()
{
  background(43,108,163);
  stroke(10);
  int picStart = 0;
  int picEnd = 0;
  image(img,0,30);    
  {
 stroke(10);
  fill(254);
  textSize(20);
  text("Insta Filters", 666, 22);
 noStroke();
 fill(43,108,163);
rect(0,0,640,30,0);
}

fill(253);
  rect(660, 32, 130, 40, 0);
  fill(254);
  fill(0);
  text("Flip", 695, 60);

  rect(660, 86, 130, 40, 0);
  fill(253);
  text("Invert", 695, 112);
  {
  rect(660, 140, 130, 40, 0);
  fill(224,0,0);
  text("RED", 695, 166);
}
{
  fill(248,248,248);
  rect(660, 195, 130, 40, 0);
  fill(55);
  textSize(20);
  fill(0);
  text("RESET", 693, 224);
}
  stroke(10);
  textSize(20);
fill(255);
textSize(30);
text("Instagram", 300, 20);
  

    if (Grayscale == true)
    {
      
pushMatrix();
 scale(-1.0, 1.0);
 image(img,-img.width,0);
 popMatrix();
      
      
    }
    if (Effect1 == true)
    {
        filter(INVERT);
     
    }

    if (Effect2 == true)
    {
          loadPixels();
      int i = picStart;
 
      while (i < picEnd) 
      {
        color c = pixels[i];
        float r = red(c);  //average the RGB colors
        pixels[i] = color(r, 0, 0);
        i = i + 1;
       
      }  
     
    
    }

    if (Effect3 == true)
    {
      loadPixels();
      Grayscale=false;
      Effect1=false;
      Effect2=false;
      Effect3=false;
      
    }

    updatePixels(); 
    redraw();
  }


void mouseClicked() 
{
  redraw();
}



void mousePressed()
{


  if (mouseX>660 && mouseX<790 && mouseY>32 && mouseY<130)
  {// flip 
    Grayscale = true;
  }   

  if (mouseX>660 && mouseX<790 && mouseY>86 && mouseY<130)
  {// Invert Color
    Effect1 = true;
  } 

  if (mouseX>660 && mouseX<790 && mouseY>140 && mouseY<130)
  {// Color Red 
    Effect2 = true;
  }  

  if (mouseX>660 && mouseX<790 && mouseY>195 && mouseY<130)
  {// Reset
    Effect3 = true;
  } 

  redraw();
}
 
color pixelAt (int x, int y)
{
   return pixels[x * img.width + y]; 
}

int Xof(int pixelLocation)
{
    return pixelLocation / img.width;
}  

int Yof(int pixelLocation)
{
    return pixelLocation % img.width;
}  