
pixSize = 20;

void pt(x, y, c)
{
	fill(0, c * 25.5, 0);
	rect(x * pixSize, y * pixSize, pixSize, pixSize);	
}

void ptt(a,b,c)
{
	pt(x, y, 255);
}

void egg(size, posx,y)
{
	pixSize = size;

	pushMatrix();
	translate(posx, y);

	pt(5,2,5); pt(6,2,5);
	pt(4,3,5); pt(3,4,5);
	pt(3,5,5); pt(3,6,5);
	pt(4,7,5); pt(5,7,5);
	pt(6,7,5); pt(7,7,5);
	pt(8,6,5); pt(8,5,5);	
	pt(8,4,5); pt(7,3,5);
	pt(6,3,10.5); pt(5,3,10.5);
	pt(4,4,10.5); pt(5,4,10.5);
	pt(6,4,10.5); pt(7,4,10.5);
	pt(4,5,10.5); pt(5,5,10.5);
	pt(6,5,10.5); pt(7,5,10.5);
	pt(4,6,10.5); pt(5,6,10.5);
	pt(6,6,10.5); pt(7,6,10.5);
	pt(4,3,0); pt(5,4,0);
	pt(5,3,0); pt(6,3,0)
	pt(5,2,0); pt(7,5,0)
	pt(4,6,0);

	popMatrix();

	/*
	fill(0,0,0);
	rect(300, 140, 60, 40);
	rect(300, 180, 40, 60);
	rect(260, 180, 50, 60);
	rect(340, 180, 50, 60);
	rect(300, 230, 60, 40);
	rect(450, 210, 30, 90);
	rect(480, 240, 30, 30);
	rect(400, 330, 60, 60);
	rect(220, 300, 60, 60);
	rect(280, 390, 90, 60);
	rect(310,360,30,30);*/	
}

void setup()
{
	noStroke();	
	size(600, 700);
	background(0, 0, 255);
		
	egg(10,10,200);
	egg(10,150,100);
	egg(10,100,300);
	egg(10,200,400);
	egg(10,250,500)
}

	
