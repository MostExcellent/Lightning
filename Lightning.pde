
Bolt bolt;
void setup()
{
	background(0);
	size(300,300);
	bolt = new Bolt((int)(Math.random()*40+130),0);
}
void draw()
{
	bolt.make();
	if(mousePressed){
		background(0);
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
		stroke(255);
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