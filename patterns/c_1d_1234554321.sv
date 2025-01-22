module pattern_1234554321();

class sk;

rand int a[];
int b=1;
constraint c1{a.size==10;}
constraint c2{foreach (a[i])
		if(i<10)
			a[i]==i+1;
		else
			a[i]==10-i;
			//b==b+1;
		      }
endclass

sk h = new();

initial
	begin

	$display("-----|PATTERN 1234554321|-----");
	//$display("\n");
	h.randomize();
	$write("\nThe Required Pattern is ");
	foreach(h.a[i])
	$write("%0d",h.a[i]);
	$display("\n");
	end
endmodule