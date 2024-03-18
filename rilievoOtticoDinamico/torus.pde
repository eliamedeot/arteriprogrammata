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

PShape createTorus(float R, float r, float inclination, int sides) {
  PShape torus = createShape(GROUP);

  PVector[][] middleVector;
  middleVector = new PVector[sides+1][sides+1];
  PVector[][] bottomVector;
  bottomVector = new PVector[sides+1][sides+1];

  //getting the body vertices
  for (int i = 0; i < sides+1; i++) {
    float lat = map(i, 0, sides, 0, inclination);
    for (int j = 0; j < sides+1; j++) {
      float lon = map(j, 0, sides, 0, TWO_PI);
      float x = (R + r * cos(lon)) * cos(lat);
      float y = (R + r * cos(lon)) * sin(lat);
      float z = r * sin(lon);
      middleVector[i][j] = new PVector(x, y, z);
    } // for j
  } // for i

  //getting the bottom vertices
  for (int i = 0; i < sides+1; i++) {
    for (int j = 0; j < sides+1; j++) {
      float angle = TWO_PI / sides * i;
      float x = r * sin(angle);
      float y = 0;
      float z = r * cos(angle);
      bottomVector[i][j] = new PVector(x, y, z);
    } // for j
  } // for i

  //drawing the body
  PShape middle = createShape();
  middle.beginShape(QUADS);
  for (int i = 0; i < sides; i++) {
    for (int j = 0; j < sides; j++) {
      PVector v1 = middleVector[i][j];
      middle.vertex(v1.x, v1.y, v1.z);
      PVector v2 = middleVector[i+1][j];
      middle.vertex(v2.x, v2.y, v2.z);
      PVector v3 = middleVector[i+1][j+1];
      middle.vertex(v3.x, v3.y, v3.z);
      PVector v4 = middleVector[i][j+1];
      middle.vertex(v4.x, v4.y, v4.z);
    } //for j
  } //for i
  middle.endShape(CLOSE);
  torus.addChild(middle);

  //drawing the bottom
  PShape bottom = createShape();
  bottom.translate(R, 0);
  bottom.rotate(inclination);
  bottom.beginShape(TRIANGLES);
  for (int i = 0; i < sides; i++) {
    for (int j = 0; j < sides; j++) {
      PVector v1 = bottomVector[0][0];
      bottom.vertex(v1.x, v1.y, v1.z);
      PVector v2 = bottomVector[i][j];
      bottom.vertex(v2.x, v2.y, v2.z);
      PVector v3 = bottomVector[i+1][j+1];
      bottom.vertex(v3.x, v3.y, v3.z);
    } //for j
  } //for i
  bottom.endShape(CLOSE);
  torus.addChild(bottom);

  torus.translate(-R, 0, 0);
  return torus;
} //torus
