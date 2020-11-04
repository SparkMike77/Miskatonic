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
    translate([-9,24,98])hull()
        {
            translate([8,-5,0])cube([2,20,60],center=true);
            translate([5,4,0])cube([8.5,20,60],center=true);
            translate([0,6,0])cylinder(d=17,h=60,center=true);
            translate([0,-6.5,0])cylinder(d=17,h=60,center=true);
        }
    translate([-4.5,19,129])rotate([0,45,0])cube([17,20,20],center=true);
    translate([6.5,19,132.5])rotate([0,0,0])cube([20,20,19],center=true);
        }
        union()
    {
        //main cavity
    translate([-10,24,97])cube([16,32,55],center=true);
    //translate([-10,24.5,97])cube([16,28,55],center=true);
    translate([-10,24,90])hull()
        {
            translate([0,5,15])cylinder(d=6,h=80,center=true);
            translate([0,-5,15])cylinder(d=6,h=80,center=true);
            //cube([5,13,55],center=true);
        }
    translate([-4.5,20,129])rotate([0,45,0])cube([13,19,19],center=true);
    translate([8.7,20,132.5])rotate([0,0,0])cube([22,19,13],center=true);
        
        translate([-4,32,104.5])cube([15,2.5,6],center=true);
        translate([-4,35,96.5])cube([20,4,22],center=true);
        translate([-4,12.5,96.5])cube([20,4,22],center=true);
        translate([10,20,145])cube([8,8.5,8.5],center=true);
        }
        translate([-1,22.5,53])hull()
        {
            translate([0,3,15])cylinder(d=4.5,h=125,center=true);
            translate([0,-3,15])cylinder(d=4.5,h=125,center=true);
        }
        translate([0,10,60])hull()
        {
            rotate([0,90,0])cylinder(d=10,h=20,center=true);
            translate([0,0,-30])cube([20,10,10],center=true);
        }
        
    }
    //translate([-3.5,22.5,73])cube([6,16,80],center=true);
    
    difference()
    {
        union()
        {
        translate([-3.5,20,55.5])cube([6,22,45],center=true);
        translate([-01,22.5,73])hull()
        {
            translate([0,4,15])cylinder(d=7,h=60,center=true);
            translate([0,-4,15])cylinder(d=7,h=60,center=true);
        }
    }
    translate([-1,22.5,53])hull()
        {
            translate([0,3,15])cylinder(d=4.5,h=125,center=true);
            translate([0,-3,15])cylinder(d=4.5,h=125,center=true);
        }
            translate([8,26,97])cube([17,28,95],center=true);
        translate([0,10,60])hull()
        {
            rotate([0,90,0])cylinder(d=10,h=20,center=true);
            translate([0,0,-30])cube([20,10,10],center=true);
        }
    }    
    
}
//rotate([0,0,0])import("ESP32-CAM-Only.stl");


Arm();
//CAM();
