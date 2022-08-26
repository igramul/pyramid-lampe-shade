// simple Pyradmid Lamp Shade Design
// by igramul.ch August 2022

base=200;   // base square length
height=200; // lamp shade height
R=18;       // radius of top hole
D=2;        // wall thickness top (side walls approximately) 

// square based pyramid module
module pyramid(base, height) {
    a = base / 2;
    polyhedron(
      points=[ [a,a,0],[a,-a,0],[-a,-a,0],[-a,a,0], // the four points at base
               [0,0,height]  ],                     // the apex point 
      faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],      // each triangle side
                  [1,0,3],[2,1,3] ]                 // two triangles for square base
    );
}

// the pyramid lamp shade
union() {

    // diff of two pyramides with a z-offset and a cude to cut of the top
    difference() {
        zoffset=3*D;
        pyramid(base=base, height=height*2);
        translate([0,0,-zoffset]) pyramid(base=base, height=height*2);
        translate([-base/2,-base/2,height])  cube([base,base,base]);
    }

    // the top with a hole for the light bulp
    translate([0,0,height-D]) 
    difference() { 
        translate([-base/4, -base/4, 0]) cube ([base/2, base/2, D]);
        cylinder(h=D, r=R, center=false);
    }
}
