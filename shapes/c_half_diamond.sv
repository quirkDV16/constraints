 module half_diamond();
 
   class exp;
 
   rand int x[5][5];
 
   constraint array { foreach (x[i,j])
			if((i==2) || (j==2 && i<3) || (i==1 && (0<j) && (j<4)))
			    x[i][j] == 42;
	/*		else if (j==2 && i<3)
			    x[i][j] == 42;
			else if (i==1 && (0<j) && (j<4))
			    x[i][j] == 42;	*/
			else 
			    x[i][j] == 32;		
			
		/*	foreach(x[i])
		    	foreach(x[j])
			     if(i==2 || ((j==2)&&(i==1))|| ((j==2)&&(i==0)))
				x[i][j] == 42;
			     else if((i==1 && j==3)||(i==1 && j==1))
				x[i][j] == 42;
		//	     else if(j==1 && i==3)
		//		x[i][j] == 42;
         	             else 
				x[i][j] == 32;	*/
                    } 
   endclass
 
   exp h_1;
 
   initial begin
         h_1 = new();
	
	$display("|---HALF  DIAMOND---|");
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

		(0 2)

	(1 1)	(1 2)	(1 3)	

(2 0)	(2 1)	(2 2)	(2 3)	(2 4)


*/






































































/*

(0 0)	(0 1)	(0 2)	(0 3)	(0 4)

(1 0)	(1 1)	(1 2)	(1 3)	(1 4)

(2 0)	(2 1)	(2 2)	(2 3)	(2 4)

(3 0)	(3 1)	(3 2)	(3 3)	(3 4)

(4 0)	(4 1)	(4 2)	(4 3)	(4 4)

*/
