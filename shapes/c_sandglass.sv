module sandglass();

class exp;
 
   randc int x[5][5];
 
   constraint array{foreach(x[i,j])
		    //	foreach(x[j])
			    if((i==0)||(i==4)||(j==2))
			     	x[i][j] == 42;
			   
	
	/*		    else if((i==3 && j==3)||
				    (i==1 && j==3)||
				    (i==1 && j==1)||
				    (i==3 && j==1))    
				x[i][j] == 42;	*/	
			    else 
			     	x[i][j] == 32;
		    } 
   endclass
 
   exp h_1;
 
   initial begin
     h_1 = new();
	
	$display("|-----SANDGLASS-----|");
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


/*

(0 0)	(0 1)	(0 2)	(0 3)	(0 4)

	(1 1)	(1 2)	(1 3)	

		(2 2)

	(3 1)	(3 2)	(3 3)		

(4 0)	(4 1)	(4 2)	(4 3)	(4 4)

*/
