/*
 This file is part of 9 x 9 x X.
 
 9 x 9 x X is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.
 
 9 x 9 x X is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with Foobar. If not, see <https://www.gnu.org/licenses/>.
 */

void radialGradient(PGraphics layer) {
  color color1 = color(220, 10, 100);
  color color2 = color(220, 100, 30);

  int h, s, b;
  int radius = layer.height;

  layer.beginDraw();
  layer.colorMode(HSB, 360, 100, 100);
  layer.background(color2);
  layer.noStroke();
  layer.rectMode(CENTER);
  layer.translate(layer.width/4, layer.height/2);

  for (int i = radius; i > 0; --i) {
    h = round(map(i, 0, radius, hue(color1), hue(color2)));
    s = round(map(i, 0, radius, saturation(color1), saturation(color2)));
    b = round(map(i, 0, radius, brightness(color1), brightness(color2)));

    layer.fill(h, s, b);
    layer.rect(0, 0, i/2, i);
    layer.rect(width/2, 0, i/2, i);
  } // for

  layer.endDraw();
} // radialGradient
