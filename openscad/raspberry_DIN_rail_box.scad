// This is a support for circuit boards.
// Copyright (C) Henrik Bjorkman 2020
// www.eit.se/hb
//
// Instruction:
// This is to be printed in 3 parts:
// Go to the end of this file and comment/uncomment as needed to get each part.

/*
https://www.thingiverse.com/thing:4676508

raspberry_DIN_rail_box
==================

This is a box for Raspberry PI to be mounted on a DIN rail.

It got room for a standard HAT. 


kicad/RPi_HAT
-------------------------

In the kicad files you can find our example HAT complete with schematics. It is intended for applications where the RPi will sit embedded in some place powered from 24 Volts (instead of typical 5 volts) and connected to an ethernet. 

kicad/RPi_HAT/prod
----------------------------

This is PCB gerber files ready for production, just send it to JLCPCB or similar service. The other components can be found at Digikey. NOTE some components are surface mounted so this is not a project for beginners to start with.


display
---------

On top of our HAT we also have a display, this one:
	Displaymoduler - LCD, grafiska  Röd, grön, blå (RGB) TFT - färg SPI 1,54" (39,12mm) 240 x 240
	https://learn.adafruit.com/adafruit-1-3-and-1-54-240-x-240-wide-angle-tft-lcd-displays/pinouts
	digikey:1528-2580-ND

show_time_and_IP_on_display
-----------------------------------------------------------

If also using the software here it will show useful things like name, time, temp and IP address on the little display. This will help a lot when installing and setting up the networking.

www.eit.se
========

The above should be usefull as it is. If you need a custom HAT we can give you an offer to make one for you. Or if you need a custom box of any sort we can give an offer on that too.

Find our email at:
http://www.eit.se/contact/
*/


creator_name = "www.eit.se";
creation_name= "raspbery_DIN_rail_box";
date_created="2020-11-01";



pcb_width=100; // 85 is minimum width
pcb_length=160;
pcb_thickness=1.6;



din_width=35;
din_height=7.5;
din_material_thicknes=1;
din_base_width=25;


holder_length=10;



// z=0 is the under side of RPi PCB.

// Raspberry PI with custom HAT
min_material_thickness = 0.5;
rpi_length=85;
rpi_width=57;
rpi_pcb_thinckness=1.2;
gpi_length=51;
gpi_width=5;
gpi_height=11.2; // Was 16.2 originally (but that connector was extra high). digikey:1528-2831-ND
hat_pcb_thinckness=1.6;
hat_length=65;
hat_width=rpi_width;
hat_from_left=2;
hat_from_bottom=7.5;
hat_under_surface=rpi_pcb_thinckness+gpi_height;
hat_upper_surface=hat_under_surface+hat_pcb_thinckness;
hat_center_x=-(rpi_length-hat_length)/2;
sdcard_holder_length=13;
sdcard_holder_width=12;
sdcard_holder_height=2;
sdcard_thickness=1.2;
sdcard_width=10.5;
sdcard_overhang=3;
hdmi_and_sound_height=7;
hdmi_and_sound_width=33; // May need adjustment for Raspberry PI 4 since it has two smaller HDMIs instead of one big.
hdmi_and_sound_depth=12;
hdmi_and_sound_overhang=1;
hdmi_and_sound_from_edge=25;

rj45_width=15.5;
rj45_height=13.5;
rj45_length=21;
rj45_from_right=3;
rj45_overhang=2;

usba_width=13;
usba_length=17;
usba_overhang=2;
usba_from_left=3;
usba_height=15;
usba_between=4.5;

hat_connectors_height=12;
hat_connectors_length=12;
hat_connectors_width=39;

display_connector_width=31;
display_connector_height=23; // Was 26.5 in first version.
display_connector_thickness=2;
display_connector_top=hat_upper_surface+display_connector_height;

display_pcb_width=42;
display_pcb_length=44;
display_pcb_thickness=1.2;
display_pcb_uppersurface=display_connector_top+display_pcb_thickness;
display_pcb_sdcard_from_edge=6; // Was 6.5


display_width=32;
display_length=35;
display_thickness=4;
display_connector_from_edge = 1; // Was 0 on first box, later this will be 1 or 1.25.

u_usb_from_edge=6.5;
u_usb_width=7.5;
u_usb_height=2.5;


// z=0 is the under side of RPi PCB under side.

box_height_over_din_rail=42.5; // the wide part (not including top). Use max 44 mm here.
upper_box_width=45; // This is along x axies, not y axies as the box_width is.
box_margin=0.3;
box_material_thicknes=2;
box_front_material_thicknes=box_material_thicknes+1;
box_length=rpi_length+2*box_material_thicknes;
box_width=rpi_width+box_material_thicknes*2;
top_height_above_pcb=display_connector_height+gpi_height+hat_pcb_thinckness+rpi_pcb_thinckness+display_thickness+display_pcb_thickness+2.3;
//lower_box_height_over_pcb=34.5; // PCB will sit box_height_over_din_rail - lower_box_height_over_pcb above DIN rail.
//lower_box_depth_below_pcb=box_height_over_din_rail-lower_box_height_over_pcb;
lower_box_depth_below_pcb=8.5;
lower_box_height_over_pcb=box_height_over_din_rail-lower_box_depth_below_pcb;
upper_box_height=top_height_above_pcb-lower_box_height_over_pcb;
opto_and_power_cutout_height =13;
usb_hdmi_audio_from_edge=3;
usb_hdmi_audio_width=60;
usb_hdmi_audio_height=10;
airvent_height=8;
intermediate_deck_length=(box_length-upper_box_width)/2;
support_width = 3;
bolt_diam=2;
screew_mount_opening = bolt_diam+0.2;
nut_diam=2*bolt_diam+0.9;
screew_mount_height = bolt_diam*2 + 2;
screew_mount_width = screew_mount_height+1;
nOfBolts = 2; // 2 or 3
screw_upper_pos_x=nOfBolts == 2 ?
    (upper_box_width+screew_mount_width)/2 :
    (box_length-screew_mount_width)/2 ;
screw_upper_pos_z=lower_box_height_over_pcb-screew_mount_height/2;
screw_lower_pos_x=-(din_width/2+screew_mount_width/2+1);
screw_lower_pos_z=-lower_box_depth_below_pcb-screew_mount_height/2+box_material_thicknes;
pin_base_material_thicknes=4;
pin_thicknes=pin_base_material_thicknes/2;
din_rail_spring_height=7;
din_rail_spring_material=3;
din_rail_spring_margin=0.3;
din_rail_slider_material=3;
din_rail_hook_material=2;
din_rail_sprint_length=(box_length-din_width)/2+8;
slider_offset=1.8;
slider_center_x=-(din_width/2+din_rail_sprint_length/2-slider_offset);




// Origo on this module is in the front center of the upper side of the holder.
module sd_card_holder(margin)
{
    // SDCard holder
    translate([sdcard_holder_length/2,0,-(sdcard_holder_height)/2])
    cube([sdcard_holder_length+margin*12, sdcard_holder_width+margin*6, sdcard_holder_height+margin*6], center=true);

    // SDCard
    translate([0,0,-(sdcard_holder_height)/2])
    cube([sdcard_overhang*2+margin*6, sdcard_width+margin*6, sdcard_thickness+margin*6], center=true);
}

// Origo on this module is in the middle of the underside of the PCB.
// https://learn.adafruit.com/adafruit-1-3-and-1-54-240-x-240-wide-angle-tft-lcd-displays/pinouts
// digikey:1528-2580-ND
module display_board(margin)
{
    color("green",1)
    {
        // Display PCB
        translate([0,0,display_pcb_thickness/2])
        cube([display_pcb_length+margin*8, display_pcb_width+margin*4, display_pcb_thickness+4*margin], center=true);

        // Misc components
        translate([0,0,display_pcb_thickness/2])
        cube([display_pcb_length-4+margin*8, display_pcb_width-4+margin*6, display_pcb_thickness+2+8*margin], center=true);
    }

    // Display
    color("grey",1)
    {
        translate([0,0,display_pcb_thickness+display_thickness/2])
        cube([display_length+margin*6, display_width+margin*6, display_thickness+margin*8], center=true);

        display_pcb_sdcard_from_center=display_pcb_width/2-display_pcb_sdcard_from_edge-sdcard_holder_width/2;
        
        translate([-display_pcb_length/2,-display_pcb_sdcard_from_center])
        sd_card_holder(margin);
    }
}

rtc_height=17;
rtc_width=22;
rtc_depth=20;
rtc_from_edge=15.5; // This started as 15.5 but will later be changed to 14.5


// Origo on this module is in the middle of the underside of the HAT PCB.
module hat_pcb(margin)
{
    color("green",1)
    {
        translate([0,0,hat_pcb_thinckness/2])
        cube([hat_length+margin*2,hat_width+margin,hat_pcb_thinckness+margin*2], center=true);   

        // A little extra margin only.
        translate([0,0,hat_pcb_thinckness/2])
        cube([hat_length+margin*2-6,hat_width+margin*3,hat_pcb_thinckness+margin*2], center=true);   


        // Misc components on PCB
        translate([0,0,hat_pcb_thinckness/2])
        cube([(hat_length-10)+margin*2,(hat_width-2)+margin*2,(hat_pcb_thinckness+2)+margin*8], center=true);   
    }

    // Move to the edge of HAT PCB
    // Later the Display connector will be moved one mm in on the HAT PCB. With it the display board will also move.
    translate([hat_length/2-display_connector_from_edge,0,hat_pcb_thinckness])
    {
        // Display connector
        color("blue",1)
        {
            h1=display_connector_height+display_pcb_thickness+1.5;
            translate([-(display_connector_thickness+margin*4)/2,0,h1/2])
            cube([display_connector_thickness+margin*12, display_connector_width+margin*6, h1+margin*6], center=true);
        }
        translate([-display_pcb_length/2,0,display_connector_height])
        display_board(margin);
    }

    color("grey",1)
    {
        // Power inlut connector and opto connectors
        translate([-(hat_length-hat_connectors_length)/2,0,hat_pcb_thinckness+hat_connectors_height/2])
        cube([hat_connectors_length+margin*4,hat_connectors_width+margin*4,hat_connectors_height+margin*4], center=true);   

        // The real time clock RTC
        // Adafruit PiRTC - PCF8523 Real Time Clock
        // elfa:301-29-222
        // digikey:1528-1871-ND
        translate([-(hat_length-rtc_depth)/2+rtc_from_edge,0,hat_pcb_thinckness+rtc_height/2])
        cube([rtc_depth+margin*12,rtc_width+margin*12,rtc_height+margin*12], center=true);
    }
}

// Origo on this module is in the middle of the underside of the PCB.
module rpi_board(margin)
{
    // RPI main PCB
    color("green",1)
    {
        translate([0,0,0.5*rpi_pcb_thinckness])
        cube([rpi_length+margin*2,rpi_width+margin,rpi_pcb_thinckness+margin*2], center=true);

        // A little extra margin only.
        translate([0,0,0.5*rpi_pcb_thinckness])
        cube([rpi_length+margin*3-6,rpi_width+margin*2,rpi_pcb_thinckness+margin*2], center=true);

        // Misc components on PCB
        translate([0,0,hat_pcb_thinckness/2])
        cube([(rpi_length-2)+margin*2,(rpi_width-10)+margin*2,(hat_pcb_thinckness+3)+margin*8], center=true);   

        translate([0,0,hat_pcb_thinckness/2])
        cube([(rpi_length-10)+margin*2,(rpi_width-2)+margin*2,(hat_pcb_thinckness+3)+margin*8], center=true);   
    }

    // GPIO connector
    color("blue",1)
    {
    translate([-(rpi_length-gpi_length)/2+hat_from_bottom,(rpi_width-gpi_width)/2-hat_from_left,rpi_pcb_thinckness+gpi_height/2])
    cube([gpi_length+margin*2,gpi_width+margin*2,gpi_height+margin*2], center=true);   
    }

    color("grey",1)
    {   
       
        translate([-rpi_length/2,0,0])
        sd_card_holder(margin);
    
        // RJ45
        translate([(rpi_length-rj45_length)/2+rj45_overhang,-((rpi_width-rj45_width)/2-rj45_from_right),rpi_pcb_thinckness+rj45_height/2])
        cube([rj45_length+margin*6, rj45_width+margin*6, rj45_height+margin*6], center=true);

        // One USB
        translate([(rpi_length-usba_length)/2+rj45_overhang,((rpi_width-usba_width)/2-rj45_from_right),rpi_pcb_thinckness+usba_height/2])
        cube([usba_length+margin*6, usba_width+margin*6, usba_height+margin*6], center=true);
        
        // Other USB
        translate([(rpi_length-usba_length)/2+rj45_overhang,((rpi_width-usba_width)/2-rj45_from_right-usba_width-usba_between),rpi_pcb_thinckness+usba_height/2])
        cube([usba_length+margin*6, usba_width+margin*6, usba_height+margin*6], center=true);

        // micro USB (power input)
        translate([-(rpi_length-u_usb_width)/2+u_usb_from_edge,-rpi_width/2,rpi_pcb_thinckness+u_usb_height/2])
        cube([u_usb_width+margin*6, 4+margin*6, u_usb_height+margin*6], center=true);

        // HDMI and sound
        translate([-(rpi_length-hdmi_and_sound_width)/2+hdmi_and_sound_from_edge,-(rpi_width-hdmi_and_sound_depth)/2-hdmi_and_sound_overhang,rpi_pcb_thinckness+hdmi_and_sound_height/2])
        cube([hdmi_and_sound_width+margin*6, hdmi_and_sound_depth+margin*6, hdmi_and_sound_height+margin*6], center=true);
    }

    // HAT PCB
    translate([hat_center_x,0,hat_under_surface])
    hat_pcb(margin);

}


// Origo here is center underside of main PCB.
module pins_between_halves(box, width, material)
{
    // Front wide part upper corner
    if (nOfBolts==2)
    {
        translate([-(box_length-width)/2, 0, lower_box_height_over_pcb-width/2])
        cube([material,box,material], center=true);  
    }  
  
    // Front lower corner
    translate([-(box_length-width)/2, 0, -(lower_box_depth_below_pcb-width/2+din_material_thicknes)])
    cube([material,box,material], center=true);  

    // Rear lower corner
    translate([(box_length-width)/2,0,-(lower_box_depth_below_pcb-width/2+din_material_thicknes)])
    cube([material,box,material], center=true);  

    // Inner corner rear.
    if (nOfBolts>2)
    {
        translate([(upper_box_width+width+1)/2, 0, lower_box_height_over_pcb-width/2])
        cube([material,box,material], center=true);  
    }
    
    // middle rear **********
    translate([(box_length-width)/2,0,rpi_pcb_thinckness + rj45_height+2.5+(width/2+box_margin)])
    cube([material,box,material], center=true);  


    // middle front (front being where the RPi SD card is sitting)
    // this need adjusting, see also "Airvent above SDCard".
    translate([-(box_length-width)/2,0,hat_under_surface-(width/2+box_margin)])
    cube([material,box,material], center=true);  

    // upper rear
    if (nOfBolts==2)
    {
        translate([(box_length-width)/2,0,lower_box_height_over_pcb-width/2])
        cube([material,box,material], center=true);  
    }

    // top Upper rear
    translate([(upper_box_width-width)/2,0,top_height_above_pcb-width/2])
    cube([material,box,material], center=true);  

    // top Upper front
    translate([-(upper_box_width-width)/2,0,top_height_above_pcb-width/2])
    cube([material,box,material], center=true);  

    // Pin at DIN rail hooks
    translate([(din_width/2+width/2+1),0,-(lower_box_depth_below_pcb-width/2+din_material_thicknes)])
    cube([material,box,material], center=true);  


}

module screw_mount(mode)
{
   
    if (mode==0)
    {
        cube([screew_mount_width,box_width,screew_mount_height], center=true);        
    }
    else
    {
        // The hole for the threaded part of screw.
        cube([screew_mount_opening,box_width*1.1,screew_mount_opening], center=true);        
        
        // The hole for the screwhead or nut.

        screew_depth = box_width/2 - 3;

        translate([0,(box_width-screew_depth+0.1)/2,0])
        rotate([90,0,0])
        cylinder(screew_depth,nut_diam/2,nut_diam/2, center=true,$fn=6);

        translate([0,-(box_width-screew_depth+0.1)/2,0])
        rotate([90,0,0])
        cylinder(screew_depth,nut_diam/2,nut_diam/2, center=true,$fn=6);

        // Elephant foot mitigation
        translate([0,-(box_width-1)/2,0])
        rotate([90,0,0])
        cylinder(1.1,0.5*nut_diam,0.6*nut_diam, center=true,$fn=6);

        translate([0,(box_width-1)/2,0])
        rotate([90,0,0])
        cylinder(1.1,0.6*nut_diam,0.5*nut_diam, center=true,$fn=6);

    }
}


// Something to put screws in.  
// mode 0 for the box/mount in which the screw/bolt hole is made
// mode 1 to make the hole.
module screew_mounting(width, length, mode)
{
    // upper screew
    translate([screw_upper_pos_x,0,screw_upper_pos_z])
    screw_mount(mode);

    if (nOfBolts>2)
    {
      translate([-screw_upper_pos_x,0,screw_upper_pos_z])
      screw_mount(mode);
    }        

    // lower screew
    translate([screw_lower_pos_x,0,screw_lower_pos_z])
    screw_mount(mode);
}

module rpi_box_body()
{
      
    // left side (the side with 40 pin GPIO)
    translate([0,((rpi_width+box_material_thicknes)/2),top_height_above_pcb/2])
    cube([upper_box_width,box_material_thicknes,top_height_above_pcb], center=true);

    translate([0,((rpi_width+box_material_thicknes)/2),(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([box_length,box_material_thicknes,(lower_box_height_over_pcb+lower_box_depth_below_pcb)], center=true);
    
    // right side (the side with HDMI)
    translate([0,-((rpi_width+box_material_thicknes)/2),top_height_above_pcb/2])
    cube([upper_box_width,box_material_thicknes,top_height_above_pcb], center=true);

    translate([0,-((rpi_width+box_material_thicknes)/2),(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([box_length,box_material_thicknes,(lower_box_height_over_pcb+lower_box_depth_below_pcb)], center=true);
    
    // Read side (the side with USB and RJ45)
    translate([((rpi_length+box_material_thicknes)/2),0,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([box_material_thicknes,rpi_width+box_material_thicknes*2,(box_height_over_din_rail)], center=true);
    
    // Front side (the side with SD card holder)
    translate([-((rpi_length+box_material_thicknes)/2),0,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([box_material_thicknes,rpi_width+box_material_thicknes*2,box_height_over_din_rail], center=true);

    // rear upper
    translate([((upper_box_width-box_front_material_thicknes)/2),0,lower_box_height_over_pcb+(upper_box_height-box_material_thicknes)/2])
    cube([box_front_material_thicknes,rpi_width+box_material_thicknes*2,(upper_box_height+box_material_thicknes)], center=true);

    // Front upper    
    translate([-((upper_box_width-box_front_material_thicknes)/2),0,lower_box_height_over_pcb+(upper_box_height-box_material_thicknes)/2])
    cube([box_front_material_thicknes,rpi_width+box_material_thicknes*2,(upper_box_height+box_material_thicknes)], center=true);
    

    // rear lower roof 
    if (nOfBolts==2)
    {
        translate([((box_length-intermediate_deck_length)/2),0,lower_box_height_over_pcb-box_material_thicknes/2])
        cube([intermediate_deck_length,rpi_width+box_material_thicknes*2,box_material_thicknes], center=true);
    }

    // front lower roof
    translate([-((box_length-intermediate_deck_length)/2),0,lower_box_height_over_pcb-box_material_thicknes/2])
    cube([intermediate_deck_length,rpi_width+box_material_thicknes*2,box_material_thicknes], center=true);

    // Top
    translate([0,0,top_height_above_pcb-box_material_thicknes/2])
    cube([upper_box_width,box_width,box_material_thicknes], center=true);

    // PCB supports in the corners
    
    // rear left PCB support
    translate([(rpi_length-support_width)/2,(rpi_width-support_width)/2,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    // rear right PCB support
    translate([(rpi_length-support_width)/2,-(rpi_width-support_width)/2,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    // left front PCB support
    translate([-(rpi_length-support_width)/2,(rpi_width-support_width)/2,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    // right front PCB support
    translate([-(rpi_length-support_width)/2,-(rpi_width-support_width)/2,(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    // middle left PCB support
    translate([hat_center_x+hat_length/2,(rpi_width/2-support_width/2),(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    // middle right PCB support
    translate([hat_center_x+hat_length/2,-(rpi_width/2-support_width/2),(lower_box_height_over_pcb-lower_box_depth_below_pcb)/2])
    cube([support_width,support_width,lower_box_height_over_pcb+lower_box_depth_below_pcb], center=true);

    pins_between_halves(box_width, pin_base_material_thicknes,pin_base_material_thicknes);  


    screew_mounting(screew_mount_height, box_width, 0);

  
    translate([-(box_length/2+2/2),0,-(sdcard_holder_height+2.5*box_margin+2/2)])
    cube([2, box_width, 2], center=true);

    translate([(box_length/2+2/2),0,-(sdcard_holder_height+2.5*box_margin+2/2)])
    cube([2, box_width, 2], center=true);


    translate([0,0,-(lower_box_depth_below_pcb)])
    rotate([0,0,180])
    din_rail_hook();   
}

module rpi_box()
{
    difference()
    {
        rpi_box_body();

        // cutout for RJ45 and two USB-A (lower rear)
        translate([rpi_length/2,0,rpi_pcb_thinckness+usba_height/2])        
        cube([box_material_thicknes*4,0.93*rpi_width,usba_height+2], center=true);

        // SDCard cutout (front)
        translate([-(rpi_length)/2,0,-(sdcard_holder_height)/2])
        cube([sdcard_overhang*2, sdcard_width+3, sdcard_thickness+2], center=true);
        
        // Airvent above USB-A and RJ45 (middle rear)
        if (nOfBolts==2)
        {
            translate([rpi_length/2,0,rpi_pcb_thinckness+usba_height+10])        
            cube([box_material_thicknes*4,0.93*rpi_width,airvent_height], center=true);
        }
        else
        {
            y1=lower_box_height_over_pcb-screew_mount_height;
            y2=rpi_pcb_thinckness+usba_height+6;
            y3=y1-y2;
            translate([rpi_length/2,0,(y1+y2)/2])
            cube([box_material_thicknes*4,0.8*box_width,y3], center=true);
        }



        // cutout for opto and power input 
        if (nOfBolts==2)
        {
            translate([-rpi_length/2,0,hat_upper_surface+opto_and_power_cutout_height/2])        
            cube([box_material_thicknes*4,0.93*rpi_width,opto_and_power_cutout_height], center=true);
        }
        else
        {
            y1=lower_box_height_over_pcb-screew_mount_height;
            y2=hat_upper_surface;
            y3=y1-y2;
            translate([-rpi_length/2,0,(y1+y2)/2])
            cube([box_material_thicknes*4,0.8*box_width,y3], center=true);
        }

        // Cutput for micro USB (power input), HDMI and audio
        translate([-(rpi_length-usb_hdmi_audio_width)/2+usb_hdmi_audio_from_edge,-rpi_width/2,rpi_pcb_thinckness+usb_hdmi_audio_height/2-0.5])
        cube([usb_hdmi_audio_width+1, box_material_thicknes*4, usb_hdmi_audio_height+1], center=true);

        // Airvent above micro USB (power input), HDMI and audio
        translate([-(rpi_length-usb_hdmi_audio_width)/2+usb_hdmi_audio_from_edge,-rpi_width/2,hat_upper_surface+airvent_height/2+2])
        cube([usb_hdmi_audio_width+1, box_material_thicknes*4, airvent_height], center=true);

        // Airvent above SDCard
        translate([-rpi_length/2,0,rpi_pcb_thinckness+gpi_height/2-1])        
        cube([1.1*rpi_length,0.93*rpi_width,0.4*gpi_height], center=true);


        // Airvents on top rear roof
        if (nOfBolts==2)
        {
            translate([((box_length-intermediate_deck_length)/2)+3,0,lower_box_height_over_pcb-box_material_thicknes/2])
            cube([0.3*intermediate_deck_length,0.8*(rpi_width+box_material_thicknes*2),1.1*box_material_thicknes], center=true);
        }
        else
        {
            x2=intermediate_deck_length-screew_mount_width-5;
            translate([(box_length/2-screew_mount_width-x2/2),0,lower_box_height_over_pcb-box_material_thicknes/2])
            cube([x2,0.8*box_width,1.1*box_material_thicknes], center=true);
        }
        
        // Airvents on top front roof
        if (nOfBolts==2)
        {
            translate([-((box_length-intermediate_deck_length)/2),0,lower_box_height_over_pcb-box_material_thicknes/2])
            cube([0.6*intermediate_deck_length,0.8*box_width,1.1*box_material_thicknes], center=true);
        }
        else
        {
            x1=intermediate_deck_length-screew_mount_width;
            x2=x1-6;
            translate([-(box_length/2-screew_mount_width-x2/2),0,lower_box_height_over_pcb-box_material_thicknes/2])
            cube([x2,0.8*box_width,1.1*box_material_thicknes], center=true);
        }

       

        // Airvents on top front
        //translate([-(upper_box_width/2),0,top_height_above_pcb-upper_box_height*0.75])
        //cube([box_material_thicknes*4,0.8*box_width,0.2*upper_box_height], center=true);
        translate([-(upper_box_width/2),0,top_height_above_pcb-upper_box_height*0.6])
        cube([box_material_thicknes*4,0.55*box_width,0.3*upper_box_height], center=true);

       
        // Cutout in the top for display
        translate([0,0,top_height_above_pcb-box_material_thicknes/2])
        cube([display_length,display_width,1.1*box_material_thicknes], center=true);

        // Airvent on the GPIO side
        translate([(rpi_length)/2-(usba_length-2),/*(box_width-box_material_thicknes)/2*/0,rpi_pcb_thinckness+(0.65*lower_box_height_over_pcb)/2])
        cube([5, /*1.1*box_material_thicknes*/box_width*1.1, 0.65*lower_box_height_over_pcb], center=true);

        // Airvent on the GPIO side
        translate([(rpi_length/2)-27,(box_width-box_material_thicknes)/2,rpi_pcb_thinckness+gpi_height/2])
        cube([10, 1.1*box_material_thicknes, gpi_height], center=true);



        // Hole for screw or sprint
        screew_mounting(screew_mount_opening, box_width*1.1, 1);


  
        // General cutouts
        rpi_board(box_margin);

        translate ([10,box_width/2-0.25,20])
        rotate([90,0,180])
        {
        font = "Liberation Sans";
    
        translate ([-10,6,0]) {
           linear_extrude(height = 1) {
               text(creator_name, font = font, size = 6);
             }
         }
         
        translate ([-10,0,0]) {
           linear_extrude(height = 1) {
               text(creation_name, font = font, size = 4);
             }
         }

        translate ([5,-5,0]) {
           linear_extrude(height = 1) {
               text("Copyright (C)", font = font, size = 3);
             }
         }

        translate ([5,-12,0]) {
           linear_extrude(height = 1) {
               text(date_created, font = font, size = 5);
             }
         }
         
        }

    }

}

module din_hook()
{
    hull()
    {
        s1=din_rail_spring_height-din_material_thicknes+0.5;
        z1=0.5;
        translate([din_rail_spring_material/2-0.5, 0, -(din_material_thicknes+box_margin+z1/2)])
        cube([din_rail_spring_material+1.5,holder_length,z1], center=true);       

        translate([din_rail_spring_material/2+0.6, 0,-din_rail_spring_height+(s1/2)])
        cube([din_rail_spring_material, holder_length, s1], center=true);       
    }
}

module din_rail_hook_body()
{
    // The floor
    difference()
    {
        translate([0,0,din_rail_hook_material/2])
        cube([box_length, box_width, din_rail_hook_material], center=true);

        translate([0,0,din_rail_hook_material/2])
        cube([box_length*0.8, box_width*0.5, din_rail_hook_material*1.1], center=true);
    }

    beam_width=box_length/8;

    // Some extra floor
    translate([(din_width/2+din_rail_spring_material/2+0.5),0,din_rail_hook_material/2])
    cube([beam_width, box_width, din_rail_hook_material], center=true);

    // Some extra floor
    translate([-(din_width/2+din_rail_spring_material/2+0.5),0,din_rail_hook_material/2])
    cube([beam_width, box_width, din_rail_hook_material], center=true);

    // Outer wall thrue which the slider goes.
    translate([-(box_length/2-din_rail_spring_material/2),0,-din_rail_spring_height/2])
    cube([din_rail_spring_material, box_width, din_rail_spring_height], center=true);

    // The wall opposite to "Inner part thrue which the slider goes".
    translate([(din_width/2+din_rail_spring_material/2+0.6),0,-din_rail_spring_height/2])
    cube([din_rail_spring_material, box_width, din_rail_spring_height], center=true);
    
    // Inner wall thrue which the slider goes.
    translate([-(din_width/2+din_rail_spring_material/2+0.6),0,-din_rail_spring_height/2])
    cube([din_rail_spring_material, box_width, din_rail_spring_height], center=true);


    // Some hooks (opposite side of slider)

    translate([din_width/2,(box_width/2-holder_length/2),0])
    din_hook();

    translate([din_width/2,-(box_width/2-holder_length/2),0])
    din_hook();
}

// Origo here is the center where the cross bow arm attaches to slider
module cross_bow_slider_arm()
{
    arm_witdh=box_width*0.9;

    cube([din_rail_slider_material, arm_witdh, din_rail_slider_material], center=true);

    translate([(din_rail_slider_material*1.5),-(arm_witdh)/2,0])
    cube([din_rail_slider_material*4, din_rail_slider_material, din_rail_slider_material], center=true);


    translate([(din_rail_slider_material*3),-(arm_witdh)/2+2.5*din_rail_slider_material,
])
    cube([din_rail_slider_material, din_rail_slider_material*5+din_rail_slider_material, din_rail_slider_material], center=true);

    translate([(din_rail_slider_material*4),-(arm_witdh)/2+din_rail_slider_material*5,0])
    cube([din_rail_slider_material*2, din_rail_slider_material, din_rail_slider_material], center=true);
}


module cross_bow_slider_body()
{
    
    // Slider main part
    hull()
    {
        translate([-slider_center_x,0,-(min_material_thickness/2)])
        cube([din_rail_sprint_length-1, holder_length, min_material_thickness], center=true);

        translate([-slider_center_x+0.55*din_rail_slider_material,0,-(din_rail_slider_material/2)])
        cube([din_rail_sprint_length-0.55*din_rail_slider_material, holder_length, din_rail_slider_material], center=true);
    }
    
    // Slider blocks to stop it falling out
    
    // inner block
    translate([(din_width/2+1.5*din_rail_spring_material+1),0,-(din_rail_slider_material/2)])
    cube([din_rail_slider_material, holder_length+3, din_rail_slider_material], center=true);
    
    // outer block
    translate([(box_length/2-1.5*din_rail_spring_material-3),0,-(din_rail_slider_material/2)])
    cube([din_rail_slider_material, holder_length+3, din_rail_slider_material], center=true);

    translate([box_length/2-5.5*din_rail_spring_material,0,-(din_rail_slider_material/2)])
    {
        cross_bow_slider_arm();
        rotate([180,0,0])
        cross_bow_slider_arm();
    }

}

// Origo on this module is on its upper surface (somewhere).
module cross_bow_slider()
{
    difference()
    {
        cross_bow_slider_body();
        
        // Opening for screw driver to pull the slider from.
        screw_driver_opening_x=3;
        screw_driver_opening_y=4;
        translate([(box_length/2+slider_offset+screw_driver_opening_x/2-2.5),0,din_rail_slider_material/2])
        cube([screw_driver_opening_x, screw_driver_opening_y, din_rail_slider_material*10], center=true);
    }
}

module cross_bow_slider_flat()
{
    rotate([0,180,0])
    cross_bow_slider();
}

module din_rail_hook()
{
    color("orange")
    difference()
    {
        din_rail_hook_body();
        
        translate([0,0,-(din_rail_slider_material/2+din_material_thicknes+din_rail_spring_margin)])
        cube([box_length*2, holder_length+1, din_rail_slider_material+din_rail_spring_margin*2], center=true);
    }
}


module box_and_board()
{
    // Uncomment one of the below:
    //pcb_holder_din();
    color("orange")
    {
       rpi_box();
    }

    color("green",1)
    rpi_board(0);
}


module left_half()
{
    translate([0,0,box_width/2])
    rotate([90,0,0])
    {
        difference()
        {
            translate([0,0,0])
            {
            //rpi_board(0);
            rpi_box();
            }
            translate([0,100,0])
            cube([200,200,200], center=true);
        }
        pins_between_halves(pin_thicknes*3,pin_base_material_thicknes,pin_thicknes-0.2);
    }
}

module right_half()
{
    translate([0,0,box_width/2])
    rotate([-90,0,0])
    {
        difference()
        {
            rpi_box();
            translate([0,-100,0])
            cube([200,200,200], center=true);
            pins_between_halves(pin_thicknes*4,pin_base_material_thicknes,pin_thicknes+0.2);
        }
    }
}

// This show all parts together
module illustrative()
{
    box_and_board();
    
    color("red")
    translate([0,0,-(lower_box_depth_below_pcb+din_material_thicknes+din_rail_spring_margin)])
    cross_bow_slider();
}

// This is all parts in a printable configuration
module all()
{
    translate([0,-20,0])
    left_half();
    translate([0,20,0])
    right_half();
    translate([-30,0,0])
    cross_bow_slider_flat();   
}

// Uncomment one of below

//left_half();
//right_half();
//pcb_holder_din();
//rpi_board(0);
//cross_bow_slider_flat();
//all();
illustrative();
