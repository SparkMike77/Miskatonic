//ESP32CAM+ long camera is ~9m square and 48mm long
//translate([-150,0,0])scale(24.5)color("grey")import("1+Cap+Uwear.stl");


$fn=150;
module CAM()
{
translate([-11,10,110])rotate([0,180,90])color("orange")union()
{
translate([0,0,0])rotate([0,-90,0])import("ESP3-CAM_v4.stl");
translate([0,-2.5,-54])rotate([0,-90,0])import("ESP32-CAM-Only.stl");
translate([-18,0,-47])cube([9,1,48]);
}
}

module Arm()
{
    difference()
    {
    union()
    {
    translate([-9,24,98])cube([17,30,60],center=true);
    translate([-4.5,19,129])rotate([0,45,0])cube([17,20,20],center=true);
    translate([6.5,19,133.5])rotate([0,0,0])cube([20,20,17],center=true);
        }
        union()
    {
    translate([-10,24,97])cube([14,28,55],center=true);
    translate([-10,26,97])cube([17,28,55],center=true);
    translate([-10,24,90])hull()
        {
            translate([0,5,15])cylinder(d=6,h=80,center=true);
            translate([0,-5,15])cylinder(d=6,h=80,center=true);
            //cube([5,13,55],center=true);
        }
    translate([-4.5,20,128])rotate([0,45,0])cube([14,19,20],center=true);
    translate([6.5,20,133.5])rotate([0,0,0])cube([22,19,15],center=true);
        translate([-4,32,104.5])cube([15,2.5,6],center=true);
        translate([-4,35,96.5])cube([20,4,22],center=true);
        translate([-4,12.5,96.5])cube([20,4,22],center=true);
        }
        translate([-3,22.5,73])hull()
        {
            translate([0,5,15])cylinder(d=3,h=105,center=true);
            translate([0,-5,15])cylinder(d=3,h=105,center=true);
        }
    }
    //translate([-3.5,22.5,73])cube([6,16,80],center=true);
    difference()
    {
        union()
        {
        translate([-3.5,20,55.5])cube([6,22,45],center=true);
        translate([-3,22.5,73])hull()
        {
            translate([0,5,15])cylinder(d=4.5,h=60,center=true);
            translate([0,-5,15])cylinder(d=4.5,h=60,center=true);
        }
    }
    translate([-3,22.5,73])hull()
        {
            translate([0,5,15])cylinder(d=3.5,h=165,center=true);
            translate([0,-5,15])cylinder(d=3.5,h=165,center=true);
        }
    }    
    
}



Arm();
//CAM();
