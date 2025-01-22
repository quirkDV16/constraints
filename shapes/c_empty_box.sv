module empty_box();
 
   class exp;
 
   randc int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			    if((i==0)||(j==0))
			     	x[i][j] == 42;
			    else if((i==4)||(j==4))
			     	x[i][j] == 42;
			    else 
			     	x[i][j] == 32;

		    } 
   endclass
 
   exp h_1;
 
   initial begin
          h_1 = new();
	
	$display("|-----EMPTY BOX-----|");
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

