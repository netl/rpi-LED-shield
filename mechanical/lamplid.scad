//lip & screwholes fixed

$fn = 100;

module lip(){
	translate([0,0,-0.1])
    linear_extrude(height = 9+0.1)
    difference()
    {
        circle(117/2);
        circle(105/2);
    }
}

module lid(height, diameter){
    module knobs(n,d,indent){
        radius=d/2;
        r =sqrt(pow(indent,2)+pow((radius*PI/(n*2)),2));
        for(a = [0 : 360/n : 360])
        {
            rotate([0,0,a])
                translate([radius+indent,0,0])
                    circle(r);
        }
    }
    
    n=9;
    i=15;
    difference()
    {
        union()
        {
            linear_extrude(height=height)
				{
                circle(diameter/2);
                knobs(n,diameter,-i);
				}
        }
        rotate([0,0,360/(2*n)])
				linear_extrude(height=(height+1)*2,center=true)
            	knobs(n,diameter,i);
    }
}

module cavity(height){
    //screw holes
    for(i = [0 : 90 : 270])
        rotate([0,0,i])
            translate([96/2,0,-0.1])
                linear_extrude(height=10.1)
                    circle(9.2/2, $fn=20);
    //mount for heatsink+led
    translate([0,0,-2])
    {
        //base
		  linear_extrude(height=height)
		      circle(71/2);
        //mounting plate
        translate([0,0,11.1])
            linear_extrude(height=height)
                square([45,115], center=true);
        //fins
        translate([0,0,18])
            linear_extrude(height=height)
                square([70,92], center=true); 
        //space for fan
        translate([47.499,0,19])
        linear_extrude(80)
            square([25.01,80],center=true);
    }

}

difference()
{
        difference()
        {
            lid(20, 130);
            lip();
        }
    cavity(21);
}
