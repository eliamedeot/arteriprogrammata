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

class Wall {
  ArrayList<Vec2> wall0;
  ArrayList<Vec2> wall1;
  ArrayList<Vec2> wall2;
  ArrayList<Vec2> wall3;
  ArrayList<Vec2> wall4;
  ArrayList<Vec2> wall5;
  ArrayList<Vec2> wall6;
  ArrayList<Vec2> wall7;
  ArrayList<Vec2> wall8;
  ArrayList<Vec2> wall9;
  ArrayList<Vec2> wall10;
  ArrayList<Vec2> wall11;
  ArrayList<Vec2> wall12;
  ArrayList<Vec2> wall13;
  ArrayList<Vec2> wall14;
  ArrayList<Vec2> wall15;
  ArrayList<Vec2> wall16;
  ArrayList<Vec2> wall17;
  ArrayList<Vec2> wall18;
  ArrayList<Vec2> wall19;
  ArrayList<Vec2> wall20;
  ArrayList<Vec2> wall21;
  ArrayList<Vec2> wall22;
  ArrayList<Vec2> wall23;
  ArrayList<Vec2> wall24;
  ArrayList<Vec2> wall25;
  ArrayList<Vec2> wall26;
  ArrayList<Vec2> wall27;
  ArrayList<Vec2> wall28;
  ArrayList<Vec2> wall29;
  ArrayList<Vec2> wall30;
  ArrayList<Vec2> wall31;

  Wall() {
    wall0 = new ArrayList<Vec2>();
    wall1 = new ArrayList<Vec2>();
    wall2 = new ArrayList<Vec2>();
    wall3 = new ArrayList<Vec2>();
    wall4 = new ArrayList<Vec2>();
    wall5 = new ArrayList<Vec2>();
    wall6 = new ArrayList<Vec2>();
    wall7 = new ArrayList<Vec2>();
    wall8 = new ArrayList<Vec2>();
    wall9 = new ArrayList<Vec2>();
    wall10 = new ArrayList<Vec2>();
    wall11 = new ArrayList<Vec2>();
    wall12 = new ArrayList<Vec2>();
    wall13 = new ArrayList<Vec2>();
    wall14 = new ArrayList<Vec2>();
    wall15 = new ArrayList<Vec2>();
    wall16 = new ArrayList<Vec2>();
    wall17 = new ArrayList<Vec2>();
    wall18 = new ArrayList<Vec2>();
    wall19 = new ArrayList<Vec2>();
    wall20 = new ArrayList<Vec2>();
    wall21 = new ArrayList<Vec2>();
    wall22 = new ArrayList<Vec2>();
    wall23 = new ArrayList<Vec2>();
    wall24 = new ArrayList<Vec2>();
    wall25 = new ArrayList<Vec2>();
    wall26 = new ArrayList<Vec2>();
    wall27 = new ArrayList<Vec2>();
    wall28 = new ArrayList<Vec2>();
    wall29 = new ArrayList<Vec2>();
    wall30 = new ArrayList<Vec2>();
    wall31 = new ArrayList<Vec2>();

    ChainShape chain0 = new ChainShape();
    ChainShape chain1 = new ChainShape();
    ChainShape chain2 = new ChainShape();
    ChainShape chain3 = new ChainShape();
    ChainShape chain4 = new ChainShape();
    ChainShape chain5 = new ChainShape();
    ChainShape chain6 = new ChainShape();
    ChainShape chain7 = new ChainShape();
    ChainShape chain8 = new ChainShape();
    ChainShape chain9 = new ChainShape();
    ChainShape chain10 = new ChainShape();
    ChainShape chain11 = new ChainShape();
    ChainShape chain12 = new ChainShape();
    ChainShape chain13 = new ChainShape();
    ChainShape chain14 = new ChainShape();
    ChainShape chain15 = new ChainShape();
    ChainShape chain16 = new ChainShape();
    ChainShape chain17 = new ChainShape();
    ChainShape chain18 = new ChainShape();
    ChainShape chain19 = new ChainShape();
    ChainShape chain20 = new ChainShape();
    ChainShape chain21 = new ChainShape();
    ChainShape chain22 = new ChainShape();
    ChainShape chain23 = new ChainShape();
    ChainShape chain24 = new ChainShape();
    ChainShape chain25 = new ChainShape();
    ChainShape chain26 = new ChainShape();
    ChainShape chain27 = new ChainShape();
    ChainShape chain28 = new ChainShape();
    ChainShape chain29 = new ChainShape();
    ChainShape chain30 = new ChainShape();
    ChainShape chain31 = new ChainShape();

    for (int i = 0; i < shape0.length; i++) {
      wall0.add(new Vec2(shape0[i].x, shape0[i].y));
    }
    for (int i = 0; i < shape1.length; i++) {
      wall1.add(new Vec2(shape1[i].x, shape1[i].y));
    }
    for (int i = 0; i < shape2.length; i++) {
      wall2.add(new Vec2(shape2[i].x, shape2[i].y));
    }
    for (int i = 0; i < shape3.length; i++) {
      wall3.add(new Vec2(shape3[i].x, shape3[i].y));
    }
    for (int i = 0; i < shape4.length; i++) {
      wall4.add(new Vec2(shape4[i].x, shape4[i].y));
    }
    for (int i = 0; i < shape5.length; i++) {
      wall5.add(new Vec2(shape5[i].x, shape5[i].y));
    }
    for (int i = 0; i < shape6.length; i++) {
      wall6.add(new Vec2(shape6[i].x, shape6[i].y));
    }
    for (int i = 0; i < shape7.length; i++) {
      wall7.add(new Vec2(shape7[i].x, shape7[i].y));
    }
    for (int i = 0; i < shape8.length; i++) {
      wall8.add(new Vec2(shape8[i].x, shape8[i].y));
    }
    for (int i = 0; i < shape9.length; i++) {
      wall9.add(new Vec2(shape9[i].x, shape9[i].y));
    }
    for (int i = 0; i < shape10.length; i++) {
      wall10.add(new Vec2(shape10[i].x, shape10[i].y));
    }
    for (int i = 0; i < shape11.length; i++) {
      wall11.add(new Vec2(shape11[i].x, shape11[i].y));
    }
    for (int i = 0; i < shape12.length; i++) {
      wall12.add(new Vec2(shape12[i].x, shape12[i].y));
    }
    for (int i = 0; i < shape13.length; i++) {
      wall13.add(new Vec2(shape13[i].x, shape13[i].y));
    }
    for (int i = 0; i < shape14.length; i++) {
      wall14.add(new Vec2(shape14[i].x, shape14[i].y));
    }
    for (int i = 0; i < shape15.length; i++) {
      wall15.add(new Vec2(shape15[i].x, shape15[i].y));
    }
    for (int i = 0; i < shape16.length; i++) {
      wall16.add(new Vec2(shape16[i].x, shape16[i].y));
    }
    for (int i = 0; i < shape17.length; i++) {
      wall17.add(new Vec2(shape17[i].x, shape17[i].y));
    }
    for (int i = 0; i < shape18.length; i++) {
      wall18.add(new Vec2(shape18[i].x, shape18[i].y));
    }
    for (int i = 0; i < shape19.length; i++) {
      wall19.add(new Vec2(shape19[i].x, shape19[i].y));
    }
    for (int i = 0; i < shape20.length; i++) {
      wall20.add(new Vec2(shape20[i].x, shape20[i].y));
    }
    for (int i = 0; i < shape21.length; i++) {
      wall21.add(new Vec2(shape21[i].x, shape21[i].y));
    }
    for (int i = 0; i < shape22.length; i++) {
      wall22.add(new Vec2(shape22[i].x, shape22[i].y));
    }
    for (int i = 0; i < shape23.length; i++) {
      wall23.add(new Vec2(shape23[i].x, shape23[i].y));
    }
    for (int i = 0; i < shape24.length; i++) {
      wall24.add(new Vec2(shape24[i].x, shape24[i].y));
    }
    for (int i = 0; i < shape25.length; i++) {
      wall25.add(new Vec2(shape25[i].x, shape25[i].y));
    }
    for (int i = 0; i < shape26.length; i++) {
      wall26.add(new Vec2(shape26[i].x, shape26[i].y));
    }
    for (int i = 0; i < shape27.length; i++) {
      wall27.add(new Vec2(shape27[i].x, shape27[i].y));
    }
    for (int i = 0; i < shape28.length; i++) {
      wall28.add(new Vec2(shape28[i].x, shape28[i].y));
    }
    for (int i = 0; i < shape29.length; i++) {
      wall29.add(new Vec2(shape29[i].x, shape29[i].y));
    }
    for (int i = 0; i < shape30.length; i++) {
      wall30.add(new Vec2(shape30[i].x, shape30[i].y));
    }
    for (int i = 0; i < shape31.length; i++) {
      wall31.add(new Vec2(shape31[i].x, shape31[i].y));
    }

    Vec2[] vertices0 = new Vec2[wall0.size()];
    for (int i = 0; i < vertices0.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall0.get(i));
      vertices0[i] = edge;
    }
    Vec2[] vertices1 = new Vec2[wall1.size()];
    for (int i = 0; i < vertices1.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall1.get(i));
      vertices1[i] = edge;
    }
    Vec2[] vertices2 = new Vec2[wall2.size()];
    for (int i = 0; i < vertices2.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall2.get(i));
      vertices2[i] = edge;
    }
    Vec2[] vertices3 = new Vec2[wall3.size()];
    for (int i = 0; i < vertices3.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall3.get(i));
      vertices3[i] = edge;
    }
    Vec2[] vertices4 = new Vec2[wall4.size()];
    for (int i = 0; i < vertices4.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall4.get(i));
      vertices4[i] = edge;
    }
    Vec2[] vertices5 = new Vec2[wall5.size()];
    for (int i = 0; i < vertices5.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall5.get(i));
      vertices5[i] = edge;
    }
    Vec2[] vertices6 = new Vec2[wall6.size()];
    for (int i = 0; i < vertices6.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall6.get(i));
      vertices6[i] = edge;
    }
    Vec2[] vertices7 = new Vec2[wall7.size()];
    for (int i = 0; i < vertices7.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall7.get(i));
      vertices7[i] = edge;
    }
    Vec2[] vertices8 = new Vec2[wall8.size()];
    for (int i = 0; i < vertices8.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall8.get(i));
      vertices8[i] = edge;
    }
    Vec2[] vertices9 = new Vec2[wall9.size()];
    for (int i = 0; i < vertices9.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall9.get(i));
      vertices9[i] = edge;
    }
    Vec2[] vertices10 = new Vec2[wall10.size()];
    for (int i = 0; i < vertices10.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall10.get(i));
      vertices10[i] = edge;
    }
    Vec2[] vertices11 = new Vec2[wall11.size()];
    for (int i = 0; i < vertices11.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall11.get(i));
      vertices11[i] = edge;
    }
    Vec2[] vertices12 = new Vec2[wall12.size()];
    for (int i = 0; i < vertices12.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall12.get(i));
      vertices12[i] = edge;
    }
    Vec2[] vertices13 = new Vec2[wall13.size()];
    for (int i = 0; i < vertices13.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall13.get(i));
      vertices13[i] = edge;
    }
    Vec2[] vertices14 = new Vec2[wall14.size()];
    for (int i = 0; i < vertices14.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall14.get(i));
      vertices14[i] = edge;
    }
    Vec2[] vertices15 = new Vec2[wall15.size()];
    for (int i = 0; i < vertices15.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall15.get(i));
      vertices15[i] = edge;
    }
    Vec2[] vertices16 = new Vec2[wall16.size()];
    for (int i = 0; i < vertices16.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall16.get(i));
      vertices16[i] = edge;
    }
    Vec2[] vertices17 = new Vec2[wall17.size()];
    for (int i = 0; i < vertices17.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall17.get(i));
      vertices17[i] = edge;
    }
    Vec2[] vertices18 = new Vec2[wall18.size()];
    for (int i = 0; i < vertices18.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall18.get(i));
      vertices18[i] = edge;
    }
    Vec2[] vertices19 = new Vec2[wall19.size()];
    for (int i = 0; i < vertices19.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall19.get(i));
      vertices19[i] = edge;
    }
    Vec2[] vertices20 = new Vec2[wall20.size()];
    for (int i = 0; i < vertices20.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall20.get(i));
      vertices20[i] = edge;
    }
    Vec2[] vertices21 = new Vec2[wall21.size()];
    for (int i = 0; i < vertices21.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall21.get(i));
      vertices21[i] = edge;
    }
    Vec2[] vertices22 = new Vec2[wall22.size()];
    for (int i = 0; i < vertices22.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall22.get(i));
      vertices22[i] = edge;
    }
    Vec2[] vertices23 = new Vec2[wall23.size()];
    for (int i = 0; i < vertices23.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall23.get(i));
      vertices23[i] = edge;
    }
    Vec2[] vertices24 = new Vec2[wall24.size()];
    for (int i = 0; i < vertices24.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall24.get(i));
      vertices24[i] = edge;
    }
    Vec2[] vertices25 = new Vec2[wall25.size()];
    for (int i = 0; i < vertices25.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall25.get(i));
      vertices25[i] = edge;
    }
    Vec2[] vertices26 = new Vec2[wall26.size()];
    for (int i = 0; i < vertices26.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall26.get(i));
      vertices26[i] = edge;
    }
    Vec2[] vertices27 = new Vec2[wall27.size()];
    for (int i = 0; i < vertices27.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall27.get(i));
      vertices27[i] = edge;
    }
    Vec2[] vertices28 = new Vec2[wall28.size()];
    for (int i = 0; i < vertices28.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall28.get(i));
      vertices28[i] = edge;
    }
    Vec2[] vertices29 = new Vec2[wall29.size()];
    for (int i = 0; i < vertices29.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall29.get(i));
      vertices29[i] = edge;
    }
    Vec2[] vertices30 = new Vec2[wall30.size()];
    for (int i = 0; i < vertices30.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall30.get(i));
      vertices30[i] = edge;
    }
    Vec2[] vertices31 = new Vec2[wall31.size()];
    for (int i = 0; i < vertices31.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(wall31.get(i));
      vertices31[i] = edge;
    }

    chain0.createChain(vertices0, vertices0.length);
    chain1.createChain(vertices1, vertices1.length);
    chain2.createChain(vertices2, vertices2.length);
    chain3.createChain(vertices3, vertices3.length);
    chain4.createChain(vertices4, vertices4.length);
    chain5.createChain(vertices5, vertices5.length);
    chain6.createChain(vertices6, vertices6.length);
    chain7.createChain(vertices7, vertices7.length);
    chain8.createChain(vertices8, vertices8.length);
    chain9.createChain(vertices9, vertices9.length);
    chain10.createChain(vertices10, vertices10.length);
    chain11.createChain(vertices11, vertices11.length);
    chain12.createChain(vertices12, vertices12.length);
    chain13.createChain(vertices13, vertices13.length);
    chain14.createChain(vertices14, vertices14.length);
    chain15.createChain(vertices15, vertices15.length);
    chain16.createChain(vertices16, vertices16.length);
    chain17.createChain(vertices17, vertices17.length);
    chain18.createChain(vertices18, vertices18.length);
    chain19.createChain(vertices19, vertices19.length);
    chain20.createChain(vertices20, vertices20.length);
    chain21.createChain(vertices21, vertices21.length);
    chain22.createChain(vertices22, vertices22.length);
    chain23.createChain(vertices23, vertices23.length);
    chain24.createChain(vertices24, vertices24.length);
    chain25.createChain(vertices25, vertices25.length);
    chain26.createChain(vertices26, vertices26.length);
    chain27.createChain(vertices27, vertices27.length);
    chain28.createChain(vertices28, vertices28.length);
    chain29.createChain(vertices29, vertices29.length);
    chain30.createChain(vertices30, vertices30.length);
    chain31.createChain(vertices31, vertices31.length);

    //Attaching the edge chain to a body via a fixture
    BodyDef bd = new BodyDef();
    bd.position.set(0.0f, 0.0f);
    Body body = box2d.createBody(bd);

    body.createFixture(chain0, 1);
    body.createFixture(chain1, 1);
    body.createFixture(chain2, 1);
    body.createFixture(chain3, 1);
    body.createFixture(chain4, 1);
    body.createFixture(chain5, 1);
    body.createFixture(chain6, 1);
    body.createFixture(chain7, 1);
    body.createFixture(chain8, 1);
    body.createFixture(chain9, 1);
    body.createFixture(chain10, 1);
    body.createFixture(chain11, 1);
    body.createFixture(chain12, 1);
    body.createFixture(chain13, 1);
    body.createFixture(chain14, 1);
    body.createFixture(chain15, 1);
    body.createFixture(chain16, 1);
    body.createFixture(chain17, 1);
    body.createFixture(chain18, 1);
    body.createFixture(chain19, 1);
    body.createFixture(chain20, 1);
    body.createFixture(chain21, 1);
    body.createFixture(chain22, 1);
    body.createFixture(chain23, 1);
    body.createFixture(chain24, 1);
    body.createFixture(chain25, 1);
    body.createFixture(chain26, 1);
    body.createFixture(chain27, 1);
    body.createFixture(chain28, 1);
    body.createFixture(chain29, 1);
    body.createFixture(chain30, 1);
    body.createFixture(chain31, 1);
  } // Wall

  void display() {
    strokeWeight(2);
    stroke(255);
    noFill();

    beginShape();
    for (Vec2 v : wall0) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall1) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall2) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall3) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall4) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall5) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall6) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall7) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall8) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall9) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall10) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall11) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall12) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall13) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall14) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall15) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall16) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall17) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall18) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall19) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall20) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall21) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall22) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall23) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall24) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall25) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall26) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall27) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall28) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall29) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall30) {
      vertex(v.x, v.y);
    }
    endShape();
    beginShape();
    for (Vec2 v : wall31) {
      vertex(v.x, v.y);
    }
    endShape();
  } // display
} // class
