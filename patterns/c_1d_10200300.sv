class con;

rand int a[],b[$];

constraint c1 { a.size == 6; }
constraint c2 { foreach(a[i])
		    a[i] == i+1; }

function void post_randomize();
    for(int i=0;i<a.size;i++) begin
	b.push_back(a[i]);
	repeat(i+1)
	    b.push_back(0);
    end
endfunction

endclass

con c;

module con10;

initial 
    begin
	c = new();
	void'(randomize(c));
	//$display("%p",c);
	$write("the desired output - ");
	foreach(c.b[i])
	    $write("%0d",c.b[i]);
    end
endmodule