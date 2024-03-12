/*
 9 x 9 x X
 Copyright 2024 Grazia Varisco, Archivio Varisco & Elia Medeot
 
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

PGraphics bg;
PGraphics pg;

PImage prova;
PImage buffer;
PImage texture;

int tiles = 7;
int[][] rotation = new int[tiles][2];

color black = color(0, 0, 25);

void setup() {
  size(600, 600, P3D);
  colorMode(HSB, 360, 100, 100);
  ortho();

  bg = createGraphics(width, height, P3D);
  pg = createGraphics(width, height, P3D);

  prova = createGraphics(width, height, P2D);
  buffer = createGraphics(width, height, P2D);

  texture = loadImage("data/texture.png");
  texture.resize(width, height);

  //drawing the background gradient
  radialGradient(bg);

  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < 2; y++) {
      rotation[x][y] = int(random(360));
    } // for x
  } // for y
} // setup

void draw() {
  pg.beginDraw();
  pg.clear();
  pg.image(bg, 0, 0, width, height);
  pg.ortho();
  pg.translate(0, 0, height/2);
  pg.rectMode(CENTER);
  pg.fill(black);
  pg.noStroke();

  for (int x = 1; x < tiles; x++) {
    pg.pushMatrix();
    pg.translate(x*(pg.width/tiles), 0);
    pg.rotateY(radians(frameCount * 0.5 + rotation[x][0]));
    pg.rect(0, pg.height/2, pg.width/15, pg.height);
    pg.popMatrix();
    pg.pushMatrix();
    pg.translate(0, 0, 30);
    pg.translate(0, x * (pg.height/tiles));
    pg.rotateX(radians(frameCount * 0.5 + rotation[x][1]));
    pg.rect(pg.width/2, 0, pg.width, pg.height/15);
    pg.popMatrix();
  } // for x
  pg.endDraw();

  // Emulating the fluted glass
  prova = pg.get();

  buffer.loadPixels();
  for (int x=0; x < width; x++) {
    for (int y=0; y < height; y++) {

      int offset = 15;

      int offsetX = int(map(brightness(texture.pixels[x+y*width]), 0, 100, 0, offset));
      if (x < width/2) offsetX *= -1;

      int offsetY = int(map(brightness(texture.pixels[x+y*width]), 0, 100, 0, offset));
      if (y < height/2) offsetY *= -1;

      buffer.pixels[x+y*width] = prova.pixels[constrain((x+offsetX)+(y+offsetY)*width, 0, width*height-1)];
    } // for y
  } // for x
  buffer.updatePixels();
  image(buffer, 0, 0, width, height);
} // draw

void keyPressed() {
  if (key == 'p') saveFrame("export/####.tif");
  println("Frame successfully saved.");
} // keyPressed
