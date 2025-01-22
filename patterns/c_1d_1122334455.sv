module pattern_1122334455();

class sk;

rand int a[];
//int count = 1;
constraint c1{a.size==10;}
//constraint c3{a[0]==1;}
constraint c2{foreach (a[i])
			if(i%2!=0)
				a[i]==(i+1)/2;
			else
				a[i]==a[i+1];
			//count==count+1;
		}
endclass

sk h = new();

initial
	begin

	$display("-----|PATTERN 1122334455|-----");
	
	h.randomize();
	$write("\nThe Required Pattern is ");
	foreach(h.a[i])
	$write("%0d",h.a[i]);
	$display("\n");
	end
endmodule
