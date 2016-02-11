
	int a =15;
	int newlen=400;
	int startx=200;
	int starty=200;
public void setup()
	{
	background(0,0,0);
	size (400,400);
	}
public void draw()
	{	
	background(0,0,0);
	newlen+=5;
	fractal(startx,starty,newlen);
		if(newlen>=550)
	{
	newlen=400;
	}
}
public void fractal(int x, int y, int len) 
{
if (len>a)
	{
		fill(0,255,0);
	fractal(x,y,len/2);
	    fill(255,255,255);
	fractal(x-len/2,y,len/2);
	fractal(x,y-len/2,len/2);
	fractal(x+len/2,y,len/2);
	fractal(x,y+len/2,len/2);
	}	
else
	{
	rect(x, y, len, len );
	}	
}
