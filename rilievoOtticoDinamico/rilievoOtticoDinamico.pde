/*
 Rilievo ottico-dinamico
 Copyright 2024 Alberto Biasi, Archivio Alberto Biasi, Elia Medeot
 
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

int selection = 200;

int tilesX = 18;
//int tilesX = 1;
int tilesY = tilesX;
float tilesW;
float tilesH;
int margin;

PGraphics pg;
PShape[][] grid;
float[][] rotation;

PShape segment, cylinder, torus;
PShape s10, s15, s20, s25, s30, s35, s40, s45, s50;

int torusRadius;
int radius;
int cylinderHeight;
int sides;

color black;
color gray;
color white;

float pmouseAngle;

void setup() {
  size(600, 600, P3D);
  colorMode(HSB, 360, 100, 100);
  ortho();

  pg = createGraphics(width, height, P3D);

  black = color(0, 0, 20);
  gray = color(0, 0, 90);
  white = color(0, 0, 100);

  margin = width / 4;
  torusRadius = width / 100;
  radius = width / 250;

  cylinderHeight = width/5;
  sides = 8;

  tilesW = (width - margin * 2)/ float(tilesX);
  tilesH = (height - margin * 2)/ float(tilesY);

  grid = new PShape[tilesX][tilesY];
  rotation = new float[tilesX][tilesY];

  s10 = createSegment(torusRadius, radius, radians(10), cylinderHeight, sides);
  s15 = createSegment(torusRadius, radius, radians(15), cylinderHeight, sides);
  s20 = createSegment(torusRadius, radius, radians(20), cylinderHeight, sides);
  s25 = createSegment(torusRadius, radius, radians(25), cylinderHeight, sides);
  s30 = createSegment(torusRadius, radius, radians(30), cylinderHeight, sides);
  s35 = createSegment(torusRadius, radius, radians(35), cylinderHeight, sides);
  s40 = createSegment(torusRadius, radius, radians(40), cylinderHeight, sides);
  s45 = createSegment(torusRadius, radius, radians(45), cylinderHeight, sides);
  s50 = createSegment(torusRadius, radius, radians(50), cylinderHeight, sides);

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {
      rotation[x][y] = atan2(tilesH * y - height/2 + margin + tilesH/2, tilesW * x - width/2 + margin + tilesW/2);
    } //for x
  } //for y
} // setup


void draw() {
  pg.beginDraw();
  pg.colorMode(HSB, 360, 100, 100);
  pg.directionalLight(0, 0, 100, 1, 1, -1);
  pg.ambientLight(0, 0, 40);
  pg.background(gray);

  PShape[][] grid = {
    {s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50},
    {s50, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s50},
    {s50, s45, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s45, s50},
    {s50, s45, s40, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s30, s30, s30, s30, s30, s30, s30, s30, s30, s30, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s25, s25, s25, s25, s25, s25, s25, s30, s30, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s20, s20, s20, s20, s20, s25, s30, s30, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s15, s15, s15, s15, s20, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s15, s10, s10, s15, s20, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s15, s10, s10, s15, s20, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s15, s15, s15, s15, s20, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s20, s20, s20, s20, s20, s20, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s25, s25, s25, s25, s25, s25, s25, s25, s30, s35, s40, s45, s50},
    {s50, s45, s40, s35, s30, s30, s30, s30, s30, s30, s30, s30, s30, s30, s35, s40, s45, s50},
    {s50, s45, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s35, s40, s45, s50},
    {s50, s45, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s40, s45, s50},
    {s50, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s45, s50},
    {s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50, s50}
  };

  pg.pushMatrix();
  pg.translate(margin + tilesW / 2, margin + tilesH / 2);
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesX; y++) {
      pg.pushMatrix();
      pg.translate(tilesW * x, tilesH * y);
      pg.rotateX(HALF_PI);
      pg.rotateY(rotation[x][y]);
      pg.shape(grid[x][y]);
      pg.popMatrix();
    } //for x

    rotation[8][8] = radians(225);
    rotation[8][9] = radians(135);
    rotation[9][8] = radians(315);
    rotation[9][9] = radians(45);
  } //for y
  pg.popMatrix();

  pg.endDraw();
  image(pg, 0, 0, width, height);

  pushStyle();
  ellipseMode(CENTER);
  noFill();

  stroke(black);
  strokeWeight(2);
  ellipse(mouseX, mouseY, selection, selection);

  stroke(white);
  strokeWeight(1);
  ellipse(mouseX, mouseY, selection, selection);

  popStyle();

  float pmouseAngle;
  float mouseAngle;
  mouseAngle = atan2(margin + tilesH/2 + tilesH - mouseY, margin + tilesW/2 + tilesW - mouseX) + PI;
  pmouseAngle = atan2(pmouseY - mouseY, pmouseX - mouseX) + PI;
  angleDifference(pmouseAngle, mouseAngle);
} //draw

void mouseDragged() {
  float pmouseAngle;
  float mouseAngle;

  pmouseAngle = atan2(pmouseY - mouseY, pmouseX - mouseX) + PI;

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      if (dist(mouseX, mouseY, margin + tilesW/2 + x*tilesW, margin + tilesH/2 + y*tilesH) < selection/2) {
        mouseAngle = atan2(margin + tilesH/2 + tilesH*y - mouseY, margin + tilesW/2 + tilesW*x - mouseX) + PI;

        //rotation[x][y] = pmouseAngle;

        if (angleDifference(rotation[x][y], pmouseAngle)) {
          rotation[x][y] += 0.0025 * (PI + mouseAngle);
        } else {
          rotation[x][y] -= 0.0025 * (PI + mouseAngle);
        } // angleDifference
      } // dist
    } // for x
  } // for
} // mouseDragged

void mouseWheel(MouseEvent event) {
  if (event.getCount() > 0) {
    selection++;
  } else {
    selection--;
  } // if

  // Minimum size
  if (selection <= 50) selection = 50;
} // mouseWheel


// Resetting the artwork
void keyPressed() {
  if (key == 'r' || key == 'R')
    for (int x = 0; x < tilesX; x++) {
      for (int y = 0; y < tilesY; y++) {
        rotation[x][y] = atan2(tilesH * y - height/2 + margin + tilesH/2, tilesW * x - width/2 + margin + tilesW/2);
      } //for x
    } //for y

  if (key == 'p' || key == 'P') {
    saveFrame("export/####.tif");
    println("Frame successfully saved.");
  } // keyPressed
} // keyPressed
