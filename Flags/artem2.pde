void setup()
{
	// Setup draw canvas. Size 600x600 pixels
    size(600, 700);
    noStroke(); 
}

tick = 1000;

void draw()
{
   // Canvas color - grey (r=100, g=100, b=100)
    background(0,0,0);
	fill(0,0,255);
	ellipse(300, 300, 400, 400);
	fill(255, 255, 255);
	ellipse(300, 300, 350, 350);
	fill(0, 0, 255);
	ellipse(300, 300, 300, 300);
	fill(255, 255, 255);
	ellipse(300, 300, 250, 250);
	fill(0, 0, 255);
	ellipse(300, 300, 200, 200);
	fill(255, 255, 255);
	ellipse(300, 300, 150, 150);
	fill(0, 0, 255);
	ellipse(300, 300, 100, 100);
	fill(255, 0, 0);
	ellipse(300, 300, 50, 50);
	fill(100, 0, 0);
    rect(100, 650, 400, 10);
    fill(100, 100, 100);
    triangle(0, 650, 100, 600, 100, 700);

    fill(100, 0, 0);
    rect(300 + tick, 300, 250, 10);
    fill(100, 100, 100);   
    triangle(250+tick, 310, 300+tick, 290, 300+tick, 320);

    tick = tick - 7;
    if (tick < 30)
    	tick = 30;
}