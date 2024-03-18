/*
 This file is part of Rilievo ottico-dinamico.
 
 Rilievo ottico-dinamico is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.
 
 Rilievo ottico-dinamico is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with Foobar. If not, see <https://www.gnu.org/licenses/>.
 */

PShape createCylinder(float r, float h, int sides) {
  PShape cylinder = createShape(GROUP);

  PVector[][] topVector;
  topVector = new PVector[sides+1][sides+1];
  PVector[][] bottomVector;
  bottomVector = new PVector[sides+1][sides+1];

  //getting all the vertices
  for (int i = 0; i < sides+1; i++) {
    for (int j = 0; j < sides+1; j++) {
      float angle = TWO_PI / (sides) * i;
      float x = sin(angle) * r;
      float y = -h;
      float z = cos(angle) * r;
      topVector[i][j] = new PVector(x, y, z);
      x = sin(angle) * r;
      y = 0;
      z = cos(angle) * r;
      bottomVector[i][j] = new PVector(x, y, z);
    } // for j
  } // for i

  //drawing the top and the bottom
  PShape top = createShape();
  top.beginShape(TRIANGLES);
  for (int i = 0; i < sides; i++) {
    for (int j = 0; j < sides; j++) {
      PVector v1 = topVector[0][0];
      top.vertex(v1.x, v1.y, v1.z);
      PVector v2 = topVector[i][j];
      top.vertex(v2.x, v2.y, v2.z);
      PVector v3 = topVector[i+1][j+1];
      top.vertex(v3.x, v3.y, v3.z);
    } //for j
  } //for i
  top.endShape(CLOSE);
  cylinder.addChild(top);

  //drawing the body by reusing the top and bottom vertices
  PShape middle = createShape();
  middle.beginShape(QUADS);
  for (int i = 0; i < sides; i++) {
    for (int j = 0; j < sides; j++) {
      PVector v1 = topVector[i][j];
      middle.vertex(v1.x, v1.y, v1.z);
      PVector v2 = topVector[i+1][j+1];
      middle.vertex(v2.x, v2.y, v2.z);
      PVector v3 = bottomVector[i+1][j+1];
      middle.vertex(v3.x, v3.y, v3.z);
      PVector v4 = bottomVector[i][j];
      middle.vertex(v4.x, v4.y, v4.z);
    } //for j
  } //for i
  middle.endShape(CLOSE);
  cylinder.addChild(middle);

  return cylinder;
} //cylinder
