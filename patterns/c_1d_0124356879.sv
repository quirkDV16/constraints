module pattern0124356879();

class sk;

rand int a[];
int temp;
constraint c1{a.size==10;}
constraint c2{foreach (a[i])
			a[i]==i;
	      }

function void post_randomize();
	temp=a[4];
	a[4]=a[3];
	a[3]=temp;
	temp=a[8];
	a[8]=a[7];
	a[7]=temp;
endfunction

endclass

sk h = new();

initial
	begin
	
	$display("-----|PATTERN 0124345879|-----");
	//$display("\n");	
	h.randomize();
	$write("\nThe Required Pattern is ");
	foreach(h.a[i])
	$write("%0d",h.a[i]);
	$display("\n");
	end
endmodule
