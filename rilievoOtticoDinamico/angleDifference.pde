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

boolean angleDifference(float sourceAngle, float targetAngle) {
  float difference;

  difference = targetAngle - sourceAngle;
  //difference = (difference + PI) % TWO_PI - PI;

  if (((difference + PI) % TWO_PI) > 1) {
    difference = (difference + PI) % TWO_PI - PI;
  } else {
    difference = (TWO_PI - difference - PI) * -1;
  }

  //println(degrees(difference));
  if (difference > 0) {
    return true;
  } else {
    return false;
  } // if
} // angleDifference
