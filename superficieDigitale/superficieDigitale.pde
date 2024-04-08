/*
 The Nature of Code
 <http://www.shiffman.net/teaching/nature>
 Spring 2011
 Box2DProcessing example: ApplyForceAttractMouse
 
 Superficie digitale
 Copyright 2024 Davide Boriani & Elia Medeot
 
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


import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;
Box[] boxes = new Box[2000];
Surface surface;
Wall wall;

int selection = 200;
int sides = 256;
float n = 0;
float attractorX;
float attractorY;

import geomerative.*;
RShape shape;
RPoint[] shape0;
RPoint[] shape1;
RPoint[] shape2;
RPoint[] shape3;
RPoint[] shape4;
RPoint[] shape5;
RPoint[] shape6;
RPoint[] shape7;
RPoint[] shape8;
RPoint[] shape9;
RPoint[] shape10;
RPoint[] shape11;
RPoint[] shape12;
RPoint[] shape13;
RPoint[] shape14;
RPoint[] shape15;
RPoint[] shape16;
RPoint[] shape17;
RPoint[] shape18;
RPoint[] shape19;
RPoint[] shape20;
RPoint[] shape21;
RPoint[] shape22;
RPoint[] shape23;
RPoint[] shape24;
RPoint[] shape25;
RPoint[] shape26;
RPoint[] shape27;
RPoint[] shape28;
RPoint[] shape29;
RPoint[] shape30;
RPoint[] shape31;

void setup() {
  size(600, 600, P3D);
  colorMode(HSB, 360, 100, 100);

  RG.init(this);
  shape = RG.loadShape("data/walls.svg");
  shape.scale(width/shape.width);

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(5);

  // Declare  number of paths
  shape0 = shape.children[0].getPoints();
  shape1 = shape.children[1].getPoints();
  shape2 = shape.children[2].getPoints();
  shape3 = shape.children[3].getPoints();
  shape4 = shape.children[4].getPoints();
  shape5 = shape.children[5].getPoints();
  shape6 = shape.children[6].getPoints();
  shape7 = shape.children[7].getPoints();
  shape8 = shape.children[8].getPoints();
  shape9 = shape.children[9].getPoints();
  shape10 = shape.children[10].getPoints();
  shape11 = shape.children[11].getPoints();
  shape12 = shape.children[12].getPoints();
  shape13 = shape.children[13].getPoints();
  shape14 = shape.children[14].getPoints();
  shape15 = shape.children[15].getPoints();
  shape16 = shape.children[16].getPoints();
  shape17 = shape.children[17].getPoints();
  shape18 = shape.children[18].getPoints();
  shape19 = shape.children[19].getPoints();
  shape20 = shape.children[20].getPoints();
  shape21 = shape.children[21].getPoints();
  shape22 = shape.children[22].getPoints();
  shape23 = shape.children[23].getPoints();
  shape24 = shape.children[24].getPoints();
  shape25 = shape.children[25].getPoints();
  shape26 = shape.children[26].getPoints();
  shape27 = shape.children[27].getPoints();
  shape28 = shape.children[28].getPoints();
  shape29 = shape.children[29].getPoints();
  shape30 = shape.children[30].getPoints();
  shape31 = shape.children[31].getPoints();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
  surface = new Surface();
  wall = new Wall();

  for (int i=0; i < boxes.length; i++) {
    boxes[i] = new Box();
  } // for
} // setup


void draw() {
  directionalLight(0, 0, 100, 1, 1, -1);
  ambientLight(0, 0, 40);
  background(0, 0, 100);
  stroke(0, 0, 100);
  strokeWeight(1);

  if (frameCount < boxes.length) boxes[frameCount] = new Box();

  noFill();

  if (shape0 != null) {
    beginShape();
    for (int i=0; i<shape0.length; i++) {
      vertex(shape0[i].x, shape0[i].y);
    } // for
    endShape();
  }
  if (shape1 != null) {
    beginShape();
    for (int i=0; i<shape1.length; i++) {
      vertex(shape1[i].x, shape1[i].y);
    } // for
    endShape();
  }
  if (shape2 != null) {
    beginShape();
    for (int i=0; i<shape2.length; i++) {
      vertex(shape2[i].x, shape2[i].y);
    } // for
    endShape();
  }
  if (shape3 != null) {
    beginShape();
    for (int i=0; i<shape3.length; i++) {
      vertex(shape3[i].x, shape3[i].y);
    } // for
    endShape();
  }
  if (shape4 != null) {
    beginShape();
    for (int i=0; i<shape4.length; i++) {
      vertex(shape4[i].x, shape4[i].y);
    } // for
    endShape();
  }
  if (shape5 != null) {
    beginShape();
    for (int i=0; i<shape5.length; i++) {
      vertex(shape5[i].x, shape5[i].y);
    } // for
    endShape();
  }
  if (shape6 != null) {
    beginShape();
    for (int i=0; i<shape6.length; i++) {
      vertex(shape6[i].x, shape6[i].y);
    } // for
    endShape();
  }
  if (shape7 != null) {
    beginShape();
    for (int i=0; i<shape7.length; i++) {
      vertex(shape7[i].x, shape7[i].y);
    } // for
    endShape();
  }
  if (shape8 != null) {
    beginShape();
    for (int i=0; i<shape8.length; i++) {
      vertex(shape8[i].x, shape8[i].y);
    } // for
    endShape();
  }
  if (shape9 != null) {
    beginShape();
    for (int i=0; i<shape9.length; i++) {
      vertex(shape9[i].x, shape9[i].y);
    } // for
    endShape();
  }
  if (shape10 != null) {
    beginShape();
    for (int i=0; i<shape10.length; i++) {
      vertex(shape10[i].x, shape10[i].y);
    } // for
    endShape();
  }
  if (shape11 != null) {
    beginShape();
    for (int i=0; i<shape11.length; i++) {
      vertex(shape11[i].x, shape11[i].y);
    } // for
    endShape();
  }
  if (shape12 != null) {
    beginShape();
    for (int i=0; i<shape12.length; i++) {
      vertex(shape12[i].x, shape12[i].y);
    } // for
    endShape();
  }
  if (shape13 != null) {
    beginShape();
    for (int i=0; i<shape13.length; i++) {
      vertex(shape13[i].x, shape13[i].y);
    } // for
    endShape();
  }
  if (shape14 != null) {
    beginShape();
    for (int i=0; i<shape14.length; i++) {
      vertex(shape14[i].x, shape14[i].y);
    } // for
    endShape();
  }
  if (shape15 != null) {
    beginShape();
    for (int i=0; i<shape15.length; i++) {
      vertex(shape15[i].x, shape15[i].y);
    } // for
    endShape();
  }
  if (shape16 != null) {
    beginShape();
    for (int i=0; i<shape16.length; i++) {
      vertex(shape16[i].x, shape16[i].y);
    } // for
    endShape();
  }
  if (shape17 != null) {
    beginShape();
    for (int i=0; i<shape17.length; i++) {
      vertex(shape17[i].x, shape17[i].y);
    } // for
    endShape();
  }
  if (shape18 != null) {
    beginShape();
    for (int i=0; i<shape18.length; i++) {
      vertex(shape18[i].x, shape18[i].y);
    } // for
    endShape();
  }
  if (shape19 != null) {
    beginShape();
    for (int i=0; i<shape19.length; i++) {
      vertex(shape19[i].x, shape19[i].y);
    } // for
    endShape();
  }
  if (shape20 != null) {
    beginShape();
    for (int i=0; i<shape20.length; i++) {
      vertex(shape20[i].x, shape20[i].y);
    } // for
    endShape();
  }
  if (shape21 != null) {
    beginShape();
    for (int i=0; i<shape21.length; i++) {
      vertex(shape21[i].x, shape21[i].y);
    } // for
    endShape();
  }
  if (shape22 != null) {
    beginShape();
    for (int i=0; i<shape22.length; i++) {
      vertex(shape22[i].x, shape22[i].y);
    } // for
    endShape();
  }
  if (shape23 != null) {
    beginShape();
    for (int i=0; i<shape23.length; i++) {
      vertex(shape23[i].x, shape23[i].y);
    } // for
    endShape();
  }
  if (shape24 != null) {
    beginShape();
    for (int i=0; i<shape24.length; i++) {
      vertex(shape24[i].x, shape24[i].y);
    } // for
    endShape();
  }
  if (shape25 != null) {
    beginShape();
    for (int i=0; i<shape25.length; i++) {
      vertex(shape25[i].x, shape25[i].y);
    } // for
    endShape();
  }
  if (shape26 != null) {
    beginShape();
    for (int i=0; i<shape26.length; i++) {
      vertex(shape26[i].x, shape26[i].y);
    } // for
    endShape();
  }
  if (shape27 != null) {
    beginShape();
    for (int i=0; i<shape27.length; i++) {
      vertex(shape27[i].x, shape27[i].y);
    } // for
    endShape();
  }
  if (shape28 != null) {
    beginShape();
    for (int i=0; i<shape28.length; i++) {
      vertex(shape28[i].x, shape28[i].y);
    } // for
    endShape();
  }
  if (shape29 != null) {
    beginShape();
    for (int i=0; i<shape29.length; i++) {
      vertex(shape29[i].x, shape29[i].y);
    } // for
    endShape();
  }
  if (shape30 != null) {
    beginShape();
    for (int i=0; i<shape30.length; i++) {
      vertex(shape30[i].x, shape30[i].y);
    } // for
    endShape();
  }
  if (shape31 != null) {
    beginShape();
    for (int i=0; i<shape31.length; i++) {
      vertex(shape31[i].x, shape31[i].y);
    } // for
    endShape();
  }

  // We must always step through time!
  box2d.step();
  surface.display();
  //shape.draw();

  if (n < sides+1) {
    float angle = TWO_PI / sides * n;
    attractorX = sin(angle) * width/3 + width/2;
    attractorY = cos(angle) * height/3 + height/2;
    n = n + 0.5;
  }

  if (n >= sides) {
    n = 0;
  }

  for (int i=0; i < boxes.length; i++) {
    float distance = dist(attractorX, attractorY, boxes[i].getX(), boxes[i].getY());
    if (distance < selection/2) {
      float factor = abs(distance - selection/2) * 10;
      //boxes[i].attract(attractorX, attractorY, factor);
      boxes[i].attract(attractorX, attractorY, factor);
    } // if
    boxes[i].display();
  } // boxes

  //pushStyle();
  //blendMode(EXCLUSION);
  //ellipseMode(CENTER);
  //noFill();
  //stroke(255);
  //strokeWeight(1);
  //ellipse(attractorX, attractorY, selection, selection);
  //popStyle();
} // draw

void mouseWheel(MouseEvent event) {
  if (event.getCount() > 0) {
    selection++;
  } else {
    selection--;
  } // if

  // Minimum size
  if (selection <= 50) selection = 50;
} // mouseWheel

void keyPressed() {
  if (key == 'p' || key == 'P') {
    saveFrame("superficieMagneticaExport/###.tif");
    println("Frame successfully saved.");
  } else {
    exit();
  }
} // keyPressed
