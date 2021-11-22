entity test_main is 
end test_main;

architecture behavior of test_main is 

component main
port (x1, x2, x3, x4:in bit; 
	s1, s2, s3: out bit); 
end component;

signal x1, x2, x3, x4:bit;
signal y1, y2, y3:bit;

begin
p1: main port map (x1, x2, x3, x4, 
			y1, y2, y3);

x1<='0',
	'0' after 50 ns,
	'0' after 100 ns,
     	'0' after 150 ns,     
	'0' after 200 ns,     
	'0' after 250 ns,     
	'0' after 300 ns,     
	'0' after 350 ns,     
	'1' after 400 ns,     
	'1' after 450 ns,     
	'1' after 500 ns,     
	'1' after 550 ns,     
	'1' after 600 ns, 
	'1' after 650 ns,
	'1' after 700 ns,
	'1' after 750 ns;
x2<='0',
	'0' after 50 ns,	
	'0' after 100 ns,
     	'0' after 150 ns,     
	'1' after 200 ns,     
	'1' after 250 ns,     
	'1' after 300 ns,     
	'1' after 350 ns,     
	'0' after 400 ns,     
	'0' after 450 ns,     
	'0' after 500 ns,     
	'0' after 550 ns,     
	'1' after 600 ns, 
	'1' after 650 ns,
	'1' after 700 ns,
	'1' after 750 ns; 
x3<='0',
	'0' after 50 ns,	
	'1' after 100 ns,
     	'1' after 150 ns,     
	'0' after 200 ns,     
	'0' after 250 ns,     
	'1' after 300 ns,     
	'1' after 350 ns,     
	'0' after 400 ns,     
	'0' after 450 ns,     
	'1' after 500 ns,     
	'1' after 550 ns,     
	'0' after 600 ns, 
	'0' after 650 ns,
	'1' after 700 ns,
	'1' after 750 ns;
x4<='0',
	'1' after 50 ns,	
	'0' after 100 ns,
     	'1' after 150 ns,     
	'0' after 200 ns,     
	'1' after 250 ns,     
	'0' after 300 ns,     
	'1' after 350 ns,     
	'0' after 400 ns,     
	'1' after 450 ns,     
	'0' after 500 ns,     
	'1' after 550 ns,     
	'0' after 600 ns, 
	'1' after 650 ns,
	'0' after 700 ns,
	'1' after 750 ns;   
end behavior; 
