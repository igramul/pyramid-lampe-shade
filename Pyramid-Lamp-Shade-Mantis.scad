
module lampe_shade() {
    import("Pyramid-Lamp-Shade-Fillet.stl", convexity = 5);
}


module mantis_kopf() {
    import("Mantis-Kopf.svg_2mm.stl", convexity = 5);
}

module igramul() {
    import("igramul.svg_2mm.stl", convexity = 5);
}


union() {
    lampe_shade();
    translate([-57,-89.5,40]) rotate([76,0,0]) scale([1.3,1.3,1]) mantis_kopf();
    translate([30,96.3,10]) rotate([75.5,0,180]) scale([0.6,0.6,0.6]) igramul();
}
