entity main is
	port (x1,x2,x3,x4: in bit;
	s1,s2,s3: out bit);
end main;

architecture fun of main is
	begin 
	s1 <= ((not (x1)) and x2 and (not (x3)) and (not (x4))) or
		((not (x1)) and x2 and x3 and x4) or
		(x1 and (not (x2)) and x3 and (not (x4))) or
		(x1 and (not (x2)) and x3 and x4) or
		(x1 and x2 and (not (x3)) and x4) or 
		(x1 and x2 and x3 and (not (x4))) or
		(x1 and x2 and x3 and x4);
	s2 <= ( (not (x1)) and (not (x2)) and x3 and (not (x4)) ) or
		( (not (x1)) and (not (x2)) and x3 and x4 ) or
		( (not (x1)) and x2 and (not (x3)) and x4 ) or
		( (not (x1)) and x2 and x3 and (not (x4)) ) or
		( x1 and (not (x2)) and (not (x3)) and (not (x4)) ) or
		( x1 and (not (x2)) and (not (x3)) and x4 ) or
		( x1 and x2 and (not (x3)) and (not (x4)) ) or
		( x1 and x2 and x3 and x4 );
	s3 <= ( (not (x1)) and (not (x2)) and (not (x3)) and x4 ) or
		( (not (x1)) and (not (x2))  and x3 and x4 ) or
		( (not (x1)) and x2 and x3 and (not (x4)) ) or
		( x1 and (not (x2)) and (not (x3)) and x4) or
		( x1 and (not (x2)) and x3 and x4 ) or
		( x1 and x2 and (not (x3)) and (not (x4))) or
		( x1 and x2 and x3 and (not (x4))); 
end fun;