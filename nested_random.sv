//randomize() - follows a linked list of object handles,
//randomizing each linked object to the end of the list.

class color;

rand int hue, sat, lum;
  constraint h {hue inside {[0:255]};}
  constraint s {sat inside {[0:100]};}
  constraint l {lum inside {[0:100]};}
endclass: color

class pixel;
rand color r, g, b;
endclass: pixel

module test();
initial
    begin
        pixel px1 = new();
        px1.r = new();
        px1.g = new();
        px1.b = new();
        px1.randomize();
        $display("red = %p",px1.r);
        $display("gre = %p",px1.g);
        $display("blu = %p",px1.b);
    end
endmodule

/*
// ++++++++++++++++++++++++ RESULT ++++++++++++++++++++++++ // 
#  red = '{hue:6, sat:10, lum:48}
#  gre = '{hue:106, sat:50, lum:62}
#  blu = '{hue:202, sat:76, lum:76}
                                                            */
