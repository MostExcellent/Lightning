
Bolt bolt;
void setup()
{
  size(300,300);
  bolt = new Bolt((int)(Math.random()*40+130),0);
}
void draw()
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
	void make()
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
		}
	}

}