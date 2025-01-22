module full_box();
 
   class exp;
 
   randc int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     	x[i][j] == 42;
		    } 
   endclass
 
   exp h_1;
 
   initial begin

/*	$display("-----|PATTERN|-----");
	$display("-----|   *   |-----");
	$display("-----|  * *  |-----");
	$display("-----| *   * |-----");
	$display("-----|  * *  |-----");	
	$display("-----|   *   |-----");
*/
         h_1 = new();
	
	$display("|-----FULL  BOX-----|");
	$display("|----- PATTERN -----|");
	$display("\n");

     assert(h_1.randomize());
    // $display(" x =%p \n", h_1.x);
     foreach(h_1.x[i])begin
    foreach(h_1.x[j])begin
      $write("%s",h_1.x[i][j]);
    end
    $display("");
  end     
	$display("\n");     
end
endmodule

