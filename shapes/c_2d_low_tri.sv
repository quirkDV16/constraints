 module low_triangle();
 
   class exp;
 
   rand int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     if(i>=j)
				x[i][j] == i+1;
			   else
				x[i][j] == 0;
                    } 
   endclass
 
   exp h_1;
 
   initial begin
        h_1 = new();
	
	$display("|---LOW  TRIANGLE---|");
	$display("|----- PATTERN -----|");
	$display("\n");

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
