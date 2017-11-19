void setup()
{
 
}

tick = 0;

void draw()
{
    // Setup draw canvas. Size 600x600 pixels
    size(600, 600);
    noStroke();
    fill(0, 255, 0);

    for (int x = 0; x < 23; x = x + 1)
	{
		fill(255 - 9*x, 10*x, 5*x);
	    rect(100 + 20 * x, 100, 20, 50);
	    fill(20*x, 255-9*x, 255-9*x);
	    rect(100+20*x, 150, 20, 50);
	    fill(255-11*x, 33*x, 50*x);
	    rect(100+20*x, 200, 20, 50);
	    fill(44*x, 255-66*x,255-7*x );
	    rect(100+20*x, 250, 20, 50);
	    fill(199-6*x, 244-9*x, 132-4*x);
	}