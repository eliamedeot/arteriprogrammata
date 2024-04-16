/*
 URMNT
 Copyright 2024 Archivio Devecchi & Elia Medeot
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as  published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program. If not, see <https://www.gnu.org/licenses/>.
 */

float zoff = 0;
OpenSimplexNoise noise;

color black = color(0);
color white = color(255);

PImage gradient;
PGraphics pg;

void setup() {
  size(600, 600, P2D);
  pg = createGraphics(width, height);

  noise = new OpenSimplexNoise();
  gradient = loadImage("data/gradient.jpg");

  grid(148, 148, 2, 2);
  //grid(8, 8, 40, 40);
} //setup

void draw() {
  background(white);
  perlin(0.0025 * 800/width);
  image(pg, 0, 0, width, height);

  //if (frameCount <= 900) {
  //  saveFrame("exportVideo/####.tif");
  //  println("Frame "+frameCount+" exported.");
  //}
} //draw

void perlin(float increment) {
  float percent = 0;
  float angle = map(percent, 0, 1, 0, TWO_PI);
  float uoff = map(sin(angle), -1, 1, 0, 2);
  float voff = map(sin(angle), -1, 1, 0, 2);
  float xoff = 0;

  PGraphics pnoise = createGraphics(width, height);

  pnoise.beginDraw();
  pnoise.noStroke();
  pnoise.loadPixels();

  for (int x = 0; x < width; x++) {
    float yoff = 0;
    for (int y = 0; y < height; y++) {
      float n;
      n = (float) noise.eval(xoff, yoff, zoff);
      float bright = map(n, -1, 1, 0, 255);

      color shade = color(gradient.pixels[int(map(bright, 0, 255, 0, gradient.width))]);

      pnoise.pixels[x + y * width] = color(shade);
      yoff += increment;
    } //for y
    xoff += increment;
  } //for x
  pnoise.updatePixels();

  //Noise speed
  zoff += increment*5;

  pnoise.endDraw();
  image(pnoise, 0, 0, width, height);
} //perlin

void grid(float tilesX, float tilesY, float tilesW, float tilesH) {
  float gutterX = tilesX + 1 ;
  float gutterY = tilesY + 1;

  float gutterW = width / gutterX;
  float gutterH = height / gutterY;

  float displacementX;
  float displacementY;
  int res = 16;

  pg.beginDraw();
  pg.fill(0);
  pg.noStroke();
  pg.beginShape();
  pg.vertex(0, 0);
  pg.vertex(width, 0);
  pg.vertex(width, height);
  pg.vertex(0, height);
  pg.vertex(0, 0);

  for (int x = 0; x <= tilesX+1; x++) {
    for (int y = 0; y <= tilesY+1; y++) {

      displacementX = gutterW/2 + x * gutterW;
      displacementY = gutterH/2 + y * gutterH;
      if (y % 2 == 0) displacementX -= gutterW/2;

      pg.beginContour();
      for (int i = res; i >= 1; i--) {
        float angle = TWO_PI/res * i;
        float vX = displacementX + tilesW/2 * cos(angle);
        float vY = displacementY + tilesH/2 * sin(angle);
        pg.vertex(vX, vY);
      } //for
      pg.endContour();
    } // for y
  } // for x
  pg.endShape(CLOSE);
  pg.endDraw();
} //grid

void keyPressed() {
  if (key == 'p' || key == 'P') {
    saveFrame("export/####.tif");
    println("Frame successfully saved.");
  }
} // keyPressed
