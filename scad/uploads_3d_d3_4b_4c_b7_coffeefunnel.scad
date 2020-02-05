$fn=128;

r = 29;
baseHeight = 15;
funnelHeight = 25;
funnelR = 10;
wallThickness = 1;
eps = 0.01;

thinCyn(baseHeight,r,r);
translate([0,0,baseHeight-eps]) thinCyn(funnelHeight,r,r+funnelR);

module thinCyn(h,r1,r2){
  difference(){
	  cylinder(h,r1,r2);
	  translate([0,0,-eps])
        cylinder(h+2*eps,r1-wallThickness,r2-wallThickness);
  }
}

