void setup() 
{
    
}

tick = 0;
mouth_height = 0;
mouth_pos = 320;

void draw()
{
    // Setup draw canvas. Size 600x600 pixels
    size(600, 600);
    noStroke();

    // Canvas color - grey (r=100, g=100, b=100)
    background(0,255,0);

    fill(0,0,255);
    rect(100,100,100,100);
    fill(0,0,255);
    rect(400,100,100,100);
    fill(255,0,0);

    // Mouth.
    rect(100,mouth_pos,400, mouth_height);
    fill(255,255,255);
    rect(100,mouth_pos,20, mouth_height);
    rect(160,mouth_pos,20, mouth_height)
    rect(220, mouth_pos, 20, mouth_height);
    rect(280, mouth_pos, 20, mouth_height);
    rect(340, mouth_pos, 20, mouth_height);
    rect(400, mouth_pos, 20, mouth_height);
    rect(460, mouth_pos, 20, mouth_height);
    tick = tick + 1;
    mouth_height = abs(sin(tick * 0.05)) * 140;
    //EYE
    eye=50;
    eye_shift = abs(sin(tick * 0.05)) * (100 - eye);
    fill(0, 0, 0);
    rect(100 + eye_shift, 100, eye, eye);
    rect(400 + eye_shift, 100, eye, eye);
    //freckles
    fill(100, 100, 0);
    fre=10;
    rect(110, 210, fre, fre);
    rect(130, 210, fre, fre);
    rect(120, 230, fre, fre);
    rect(410, 210, fre, fre);
    rect(430,210 , fre, fre);
    rect(420, 230, fre, fre);

}



