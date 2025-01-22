module emp_diamond();
 
   class exp;
 
   randc int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     if(((i+j)==6)||((i+j)==2)||((i==1)&&(j==3))||((i==3)&&(j==1)))
				x[i][j] == 42;
			     else
				x[i][j] == 32;
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
	
	$display("|---EMPTY DIAMOND---|");
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
