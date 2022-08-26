
module lampe_shade() {
    import("Pyramid-Lamp-Shade-Fillet.stl", convexity = 5);
}


module mantis_kopf() {
    import("Mantis-Kopf.svg_5mm.stl", convexity = 5);
}

module igramul() {
    import("igramul.svg_2mm.stl", convexity = 5);
}


union() {
    difference() {
        lampe_shade();
        translate([-52.5,-93,20]) rotate([75.5,0,0]) scale([0.6,0.6,0.6]) mantis_kopf();
    }
    translate([30,96.3,10]) rotate([75.5,0,180]) scale([0.6,0.6,0.6]) igramul();
}
