import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {


Bolt bolt;
public void setup()
{
  size(300,300);
  bolt = new Bolt((int)(Math.random()*40+130),0);
}
public void draw()
{
	bolt.make();
	if(mousePressed){
		background(255);
		bolt = new Bolt((int)(Math.random()*40+130), 0);
		bolt.make();
	}
}
class Bolt
{
	int x;
	int y;
	int newX;
	int newY;

	Bolt (int startX, int startY)
	{
		x = startX;
		y = startY;
	}
	public void make()
	{
		stroke(0);
		fill(0);
		while(y <= 300)
		{
			newX = x + (int)(Math.random()*20-10);
			newY = y + (int)(Math.random()*13+3);
			line(x, y, newX, newY);
			x = newX;
			y = newY;
			println("newX: "+newX);
			println("newY: "+newY);
		}
	}

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
