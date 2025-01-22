/*
module pyramind();

int x[5][5];
int i,j;
initial begin

foreach(x[i,j])
    if(j<=i)
	x[i][j] = 42;
    else
	x[i][j] = 32;


 foreach(x[i])begin
    foreach(x[j])begin
	$write("%s",x[i][j]);
    end	
	$display("\n");
 end
end
endmodule
*/

 module low_pyramind();
 
   class exp;
 
   rand int x[5][5];
 
   constraint array{foreach(x[i])
		    	foreach(x[j])
			     if(j<=i)
				x[i][j] == 42;
			   else
				x[i][j] == 32;
                    } 
   endclass
 
   exp h_1;
 
   initial begin
     h_1 = new();
	
	$display("|----LOW PYRAMID----|");
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
