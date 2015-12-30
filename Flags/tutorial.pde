void Horizontal2Stripes(
        posX, posY, sizeX,
        r1, g1, b1,
        r2, g2, b2)
{
    sizeY = sizeX * 2 / 3;
    fill(r1, g1, b1);
    rect(posX, posY, sizeX, sizeY / 2);
    fill(r2, g2, b2);
    rect(posX, posY + sizeY / 2, sizeX, sizeY / 2);
}

void Vertical3Stripes(
        posX, posY, sizeX,
        r1, g1, b1,
        r2, g2, b2,
        r3, g3, b3)
{
    sizeY = sizeX * 2 / 3;
    stripe = sizeX / 3;
    fill(r1, g1, b1);
    rect(posX, posY, stripe, sizeY);
    fill(r2, g2, b2);
    rect(posX + stripe, posY, stripe, sizeY);
    fill(r3, g3, b3);
    rect(posX + stripe * 2, posY, stripe, sizeY);
}

void drawItaly(posX, posY, sizeX)
{
    Vertical3Stripes(posX, posY, sizeX,
            0, 170, 0,
            255, 255, 255,
            255, 0, 0);
}

void drawRomania(posX, posY, sizeX)
{
    Vertical3Stripes(posX, posY, sizeX,
            0, 0, 170,
            255, 255, 0,
            255, 0, 0);
}

void drawIreland(posX, posY, sizeX)
{
    Vertical3Stripes(posX, posY, sizeX,
            0, 170, 0,
            255, 255, 255,
            255, 127, 0);
}

void drawBelgium(posX, posY, sizeX)
{
    Vertical3Stripes(posX, posY, sizeX,
            0, 0, 0,
            255, 255, 0,
            255, 0, 0);
}

void drawUkraine(posX, posY, sizeX)
{
    // Ukraine.
    Horizontal2Stripes(posX, posY, sizeX,
            0, 0, 255,
            255, 255, 0);
}

void drawPoland(posX, posY, sizeX)
{
    // Poland.
    Horizontal2Stripes(posX, posY, sizeX,
            255, 255, 255,
            255, 0, 0);
}

void drawIndonesia(posX, posY, sizeX)
{
    // Indonesia.
    Horizontal2Stripes(posX, posY, sizeX,
            255, 0, 0,
            255, 255, 255);
}

void drawJapan(posX, posY, sizeX)
{
    sizeY = sizeX * 2 / 3;
    radius = sizeX * 35 / 90;
    // Japan.
    fill(255, 255, 255);
    rect(posX, posY, sizeX, sizeY);
    fill(255, 0, 0);
    ellipse(
            posX + sizeX / 2, posY + sizeY / 2, 
            radius, radius);
}

void drawGermany(posX, posY, sizeX)
{
    sizeY = sizeX * 2 / 3;
    stripe = sizeY / 3;
    // Germany.
    fill(0, 0, 0);
    rect(posX, posY, sizeX, stripe);
    fill(255, 0, 0);
    rect(posX, posY + stripe, sizeX, stripe);
    fill(255, 255, 0);
    rect(posX, posY + stripe * 2, sizeX, stripe);
}

void drawNorway(posX, posY, sizeX)
{
    sizeY = sizeX * 2 / 3;
    white = sizeX * 16 / 90;
    blue = sizeX * 10 / 90;
    whiteOffset = sizeX * 22 / 90;
    blueOffset = sizeX * (22 + 3) / 90;
    // Norway.
    fill(255, 0, 0);
    rect(posX, posY, sizeX, sizeY);
    fill(255, 255, 255);
    rect(posX, posY + whiteOffset, sizeX, white);
    rect(posX + whiteOffset, posY, white, sizeY);
    fill(0, 0, 120);
    rect(posX, posY + blueOffset, sizeX, blue);
    rect(posX + blueOffset, posY, blue, sizeY);
}

void drawRandom(posX, posY, sizeX)
{
    countries = 10;
    country = int(random(countries)) + 1;
    
    if (country == 1)
        drawUkraine(posX, posY, sizeX);
    else if (country == 2)
        drawGermany(posX, posY, sizeX);
    else if (country == 3)
        drawJapan(posX, posY, sizeX);
    else if (country == 4)
        drawNorway(posX, posY, sizeX);
    else if (country == 5)
        drawPoland(posX, posY, sizeX);
    else if (country == 6)
        drawIndonesia(posX, posY, sizeX);
    else if (country == 7)
        drawItaly(posX, posY, sizeX);
    else if (country == 8)
        drawRomania(posX, posY, sizeX);
    else if (country == 9)
        drawIreland(posX, posY, sizeX);
    else if (country == 10)
        drawBelgium(posX, posY, sizeX);
}

void setup() 
{
    // Setup draw canvas. Size 600x600 pixels
    size(600, 600);
    noStroke();

    // Canvas color - grey (r=100, g=100, b=100)
    background(100);

    for (int x = 0; x <= 5; x = x + 1)
    for (int y = 0; y <= 8; y = y + 1)
    {
        drawRandom(17.5 + 95 * x, 10 + 65 * y, 90);
    }
}

