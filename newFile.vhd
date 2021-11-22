entity main is
	port (x1,x2,x3,x4: in bit;
	s1,s2,s3: out bit);
end main;

architecture fun of main is
	begin 
	s1 <= (x1 or (not(x2)) or x3 or (not(x4))) and (x1 or (not (x2))
		or (not (x3)) or x4) and ((not (x1)) or x2 or x3 or
		(not (x4)));
	s2 <= (x1 or x3 or x4) and (x1 or (not (x2)) or (not (x3)) or
		(not (x4))) and ((not (x1)) or (not (x2)) or x3 or 
		(not (x4)));
	s3 <= (x2 or x3 or x4) and ((not (x1)) or x2 or x4) and (x1 or (not 
		(x2)) or x3 or (not (x4)));
end fun;