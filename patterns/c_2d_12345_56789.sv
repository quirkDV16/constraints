 module pattern_12345_56789();
 
   class exp;
 
   randc bit [3:0]x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     if(j==0)
				x[i][j] == i+1;
			   else
				x[i][j] == x[i][j-1]+1;
                    } 
   endclass
 
   exp h_1;
 
   initial begin

	$display("-----|2D PATTERN 12345 to 56789|-----");
	$display("\n");


     h_1 = new();
     assert(h_1.randomize());
    // $display(" x =%p \n", h_1.x);
     foreach(h_1.x[i])begin
    foreach(h_1.x[j])begin
      $write(h_1.x[i][j]);
    end
    $display("");
  end     
$display("\n");

end
   endmodule
