class cons;
  rand int a[];
  constraint size { a.size == 19; }
  constraint seqe {
    a[0] == 1;a[2]==2;a[5]==3;a[9]==4;a[14]==5;
	foreach (a[i])
	   if(i>0 && i<2)
		a[i] ==	0; 	 
   	   else if(i>2 && i<5)
		a[i]==0;
 	   else if(i>5 && i<9)
		a[i]==0; 
	   else if(i>9 && i<14)
		a[i]==0;
	   else if(i>14 && i<19)
		a[i]==0;
		}
  function void post_randomize();
    $display("\nGenerated sequence: %0p", a);
		$display("\n");
  endfunction
endclass

cons c;

module top;
  initial begin

	$display("-----|PATTERN 1020030004000050000|-----");

    c = new();
    assert(c.randomize);
  end
endmodule