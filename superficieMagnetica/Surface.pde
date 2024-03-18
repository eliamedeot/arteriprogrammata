/*
 The Nature of Code
 <http://www.shiffman.net/teaching/nature>
 Spring 2011
 Box2DProcessing example: ApplyForceAttractMouse
 
 This file is part of Superficie magnetica.
 
 Superficie magnetica is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.
 
 Superficie magnetica is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with Foobar. If not, see <https://www.gnu.org/licenses/>.
 */

class Surface {
  // We'll keep track of all of the surface points
  ArrayList<Vec2> surface;


  Surface() {
    surface = new ArrayList<Vec2>();

    // This is what box2d uses to put the surface in its world
    ChainShape chain = new ChainShape();

    float sides = 256;

    // This has to go backwards so that the objects  bounce off the top of the surface
    // This "edgechain" will only work in one direction!
    for (int i = 0; i < sides+1; i++) {

      float angle = TWO_PI / sides * i;
      float x = sin(angle) * (width/2 - 10) + width/2;
      float y = cos(angle) * (height/2 - 10) + height/2;

      // Store the vertex in screen coordinates
      surface.add(new Vec2(x, y));
    } // for

    // Build an array of vertices in Box2D coordinates
    // from the ArrayList we made
    Vec2[] vertices = new Vec2[surface.size()];
    for (int i = 0; i < vertices.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(surface.get(i));
      vertices[i] = edge;
    } // for

    // Create the chain!
    chain.createChain(vertices, vertices.length);

    // The edge chain is now attached to a body via a fixture
    BodyDef bd = new BodyDef();
    bd.position.set(0.0f, 0.0f);
    Body body = box2d.createBody(bd);
    // Shortcut, we could define a fixture if we
    // want to specify frictions, restitution, etc.
    body.createFixture(chain, 1);
  } // Surface

  // A simple function to just draw the edge chain as a series of vertex points
  void display() {
    fill(0);
    strokeWeight(2);
    stroke(0);
    beginShape();
    for (Vec2 v : surface) {
      vertex(v.x, v.y);
    } // drawing the wall
    endShape();
  } // display
} // class
