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

PShape createSegment(float R, float r, float inclination, float h, int sides) {
  PShape segment = createShape(GROUP);

  cylinder = createCylinder(radius, cylinderHeight, sides);
  cylinder.setStroke(false);
  cylinder.setFill(black);
  torus = createTorus(torusRadius, radius, inclination, sides);
  torus.setStroke(false);
  torus.setFill(black);

  segment = createShape(GROUP);
  segment.setStroke(false);
  segment.setFill(black);
  segment.addChild(cylinder);
  segment.addChild(torus);

  segment.translate(R, 0);
  segment.rotate(PI-inclination);
  segment.translate(R, 0);
  
  return segment;
}//createSegment
