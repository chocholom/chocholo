union(){
    intersection(){
        difference(){
            cube(size=[187.2, 96.4, 29]);
            cube(size=[167.2, 76.4, 9], center=true);
        };
        sphere(r=5);
    };
    translate(v=[-93.6, 0, 0]){
        cube(size=[5, 5, 19], center=true);
    };
    translate(v=[93.6, 0, 0]){
        cube(size=[5, 5, 19], center=true);
    };
};
