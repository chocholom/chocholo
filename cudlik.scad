$fn = 60;
module chytadlo(){
	difference(){
		union(){
			for(n=[1:6]){
				rotate(a=n*360/6, v = [0,0,1] ) translate([2.5,0,0]) 			cylinder(r=0.5,11);
			cylinder(r=2.5, 11);
			}
		}
	translate([0,0,3.1]) cylinder(r=1.25, 8);
	}


}
module podstava(){
cube([24,30,2], center=true);
translate([0,1,2]) cube([24,28,2], center=true);
translate([0,0,5]) translate([-12,-13,-2]) rotate(a=4.398, v=[1,0,0]) translate([1,0,-2]) cube([23,26,2]);
}

module dira(){

	
	color([1,1,1]) translate([1,8,-1]) rotate(a=-40, v=[0,1,0]) translate([-2,0,0]) cube([2,7.1,7]);

   
	translate([5.6,8.1,1.15]) union(){
		difference(){
			rotate_extrude() translate([4.58,-2.2]) rotate(a=-40, v=[0,0,1]) square([2,7]);
			translate([-20,0,-5]) cube([40,20,30]);
			translate([0,-19,-5]) cube([40,20,30]);
			translate([0,0,-5]) rotate(a=140, v=[0,0,-5]) cube([40,20,30]);
		}
		rotate(a=39, v=[0,0,1]) rotate(a=40, v=[0,-1,0]) translate([-6.95,-5,1.3]) cube([2,5,7]);
	};
}
module dirka(){
	difference(){
		translate([-7,10,-1.1]) cube([6,3,4]);
		color([1,1,1]) translate([1,8,-1]) rotate(a=-40, v=[0,1,0]) translate([-1.9,0,0]) cube([8,9,7]);
	};
   translate([2,-3,-1.1]) cube([8,5,4]);

}

translate([7,8,0]) chytadlo();
translate([7-10,8-15,0]) chytadlo();
difference(){
   podstava();
	dira();
	dirka();
}



