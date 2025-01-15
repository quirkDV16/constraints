//Let’s assume there’s a 2d pixel matrix 1920 x 1080 in size. 
//I want to constraint the matrix such that in the neighborhood 
//of an off pixel(0) there are only ON pixels(1-255) for smaller
//matrix 10x10

///////////// CODE /////////////
class matrix;
  //rand int pixels[10][10];
  rand bit [5:0]pixels[10][10];
  int WIDTH = 10;
  int HEIGHT = 10;

  //constraint val { foreach(pixels[i,j]) 
  //  pixels[i][j] inside {[0:100]};}

  constraint wei { foreach(pixels[i,j])
  //  pixels[i][j] dist {0:=100000, [1:100]:=10};}
    pixels[i][j] dist {0:=100, 1:=100};}

///////// adding gaurds to handle edge cases
  constraint on_next_to_off 
  {
    foreach (pixels[i,j]) 
    {
      if (pixels[i][j] == 0) 
      {
        if (i > 1) 
        {
          if (j > 1)
            pixels[i-1][j-1] != 0;
            pixels[i-1][j] != 0;
          if (j < WIDTH-1)
            pixels[i-1][j+1] != 0;
        }

        if (j > 1)
          pixels[i][j-1] != 0;
        if (j < WIDTH-1)
          pixels[i][j+1] != 0;

        if (i < HEIGHT-1) 
        {
          if (j > 1)
            pixels[i+1][j-1] != 0;
          pixels[i+1][j] != 0;
          if (j < WIDTH-1)
            pixels[i+1][j+1] != 0;
        }
       }
     }
   }
          
   function void print();
     foreach (pixels[i]) 
       begin
         string line;
           foreach (pixels[,j])
           line = $sformatf("%s %d", line, pixels[i][j]);
           $display(line);
       end
   endfunction
endclass
        
module test;

initial 
  begin
    matrix m;
    m = new();
    $display("\n2D MATRIX FOR AN ON-NEXT-TO-OFF :\n");
    if (!m.randomize())
      $fatal(0, "randerr");
      m.print();
  end

endmodule

/*

///////////// RESULT /////////////
2D MATRIX FOR AN ON-NEXT-TO-OFF :       
1  0  1  1  0  1  0  1  1  0
1  1  1  1  1  1  1  1  1  1
1  0  1  1  1  1  1  0  1  0
1  1  1  0  1  1  1  1  1  1
1  0  1  1  1  1  1  1  1  0
1  1  1  1  1  1  0  1  1  1
1  1  0  1  1  1  1  1  1  1
0  1  1  1  1  0  1  1  0  1
1  1  1  1  1  1  1  1  1  1
0  1  0  1  0  1  1  1  1  0
                                  */
        
