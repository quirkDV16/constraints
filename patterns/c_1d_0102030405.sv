module pattern_0102030405;

class sk;
	rand int a[];
	
	constraint c1{a.size==10;}
	constraint c2{foreach(a[i])
			if (i%2==0)
				a[i]==0;
			else 
				a[i]==(i+1)/2;}
endclass

sk h=new();

initial 
	begin

		$display("-----|PATTERN 0102030405|-----");
	//$display("\n");
		h.randomize();
		$write("\nthe required pattern is ");
		foreach(h.a[i])
		$write("%0d",h.a[i]);
		$display("\n");
	end

endmodule
