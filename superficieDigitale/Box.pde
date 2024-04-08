/*
 The Nature of Code
 <http://www.shiffman.net/teaching/nature>
 Spring 2011
 Box2DProcessing example: ApplyForceAttractMouse
 
 This file is part of Superficie digitale.
 
 Superficie digitale is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.
 
 Superficie digitale is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with Foobar. If not, see <https://www.gnu.org/licenses/>.
 */

class Box {

  // We need to keep track of a Body and a width and height
  Body body;
  float w = 5;
  float h = 1;

  // Constructor
  Box() {
    // Add the box to the box2d world
    float angle = random(TWO_PI);
    makeBody(new Vec2(sin(angle) * width/4 + width/2, cos(angle) * width/4 + width/2), w, h);
  } // Box

  void attract(float x, float y, float factor) {

    // From BoxWrap2D example
    Vec2 worldTarget = box2d.coordPixelsToWorld(x, y);
    Vec2 bodyVec = body.getWorldCenter();

    // First find the vector going from this body to the specified point
    worldTarget.subLocal(bodyVec);

    // Then, scale the vector to the specified force
    worldTarget.normalize();
    worldTarget.mulLocal((float) factor);

    // Now apply it to the body's center of mass.
    body.applyForce(worldTarget, bodyVec);
  } // attract


  float getX() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    return pos.x;
  } // getX

  float getY() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    return pos.y;
  } // getY

  // Drawing the box
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);

    // Get its angle of rotation
    float a = body.getAngle();

    pushMatrix();
    translate(pos.x, pos.y, h/4);
    if (dist(attractorX, attractorY, pos.x, pos.y) < selection/2) {
      a = atan2(attractorY - pos.y, attractorX - pos.x) + PI;
    } // if

    rotateX(-a);
    rotateY(-a);

    fill(150);
    noStroke();
    box(w, h, h);
    popMatrix();
  } // display


  // This function adds the rectangle to the box2d world
  void makeBody(Vec2 center, float w_, float h_) {

    // Define a polygon (this is what we use for a rectangle)
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    // Parameters that affect physics
    fd.density = 20;
    fd.friction = 5;
    fd.restitution = 0;

    // Define the body and make it from the shape
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);
  } // makeBody
} // class
