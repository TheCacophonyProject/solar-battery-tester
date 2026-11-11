$fa = 5;
$fs = 0.3;

pi_hole_d = 2.2;
pi_d = 5.6;
pi_h = 11;
pi_hold_gap = 49;

fan_height = 30;
fan_hole_d = 4.6;
fan_d = 8;
fan_h = 14;
fan_hold_gap = 71.5;

difference() {
    hull() {
        translate([0, pi_hold_gap/2, 0])
        cylinder(d = pi_d, h = pi_h);

        translate([-pi_d*3, pi_hold_gap/2+5, 0])
        cylinder(d = pi_d*3, h = pi_h);
    }
    translate([0, pi_hold_gap/2, 0])
    translate([0, 0, -1])
    cylinder(d = pi_hole_d, h = pi_h+2);

}

difference() {
    hull() {
        translate([0, -pi_hold_gap/2, 0])
        cylinder(d = pi_d, h = pi_h);

        translate([-pi_d*3, -pi_hold_gap/2-5, 0])
        cylinder(d = pi_d*3, h = pi_h);
    }
    translate([0, -pi_hold_gap/2, 0])
    translate([0, 0, -1])
    cylinder(d = pi_hole_d, h = pi_h+2);

}

hull() {
    translate([-pi_d*3, pi_hold_gap/2+5, 0])
    cylinder(d = pi_d*3, h = pi_h);
    translate([-pi_d*3, -pi_hold_gap/2-5, 0])
    cylinder(d = pi_d*3, h = pi_h); 
}

difference() {
    hull() {
        
        translate([-pi_d*3, -fan_hold_gap/2, fan_height])
        rotate([0, 90, 0])
        cylinder(d = fan_d, h = fan_h, center=true);

        translate([-pi_d*3, -pi_hold_gap/2-5, 0])
        cylinder(d = pi_d*3, h = pi_h);
    }
    translate([-pi_d*3, -fan_hold_gap/2, fan_height])
    rotate([0, 90, 0])
    cylinder(d = fan_hole_d, h = fan_h+2, center=true);

}

mirror([0, 1, 0])
difference() {
    hull() {
        
        translate([-pi_d*3, -fan_hold_gap/2, fan_height])
        rotate([0, 90, 0])
        cylinder(d = fan_d, h = fan_h, center=true);

        translate([-pi_d*3, -pi_hold_gap/2-5, 0])
        cylinder(d = pi_d*3, h = pi_h);
    }
    translate([-pi_d*3, -fan_hold_gap/2, fan_height])
    rotate([0, 90, 0])
    cylinder(d = fan_hole_d, h = fan_h+2, center=true);

}