 module full_diamond();
 
   class exp;
 
   rand int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     if(j==2 || i==2 )
				x[i][j] == 42;
			     else if((i==1 && j==3)||(i==3 && j==1)||
				     (i==1 && j==1)||(i==3 && j==3))
				x[i][j] == 42;
		//	     else if(j==1 && i==3)
		//		x[i][j] == 42;
         	             else 
				x[i][j] == 32;
                    } 
   endclass
 
   exp h_1;
 
   initial begin
      h_1 = new();
	
	$display("|---FULL  DIAMOND---|");
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
