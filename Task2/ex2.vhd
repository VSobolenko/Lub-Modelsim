entity ex2 is
    port (a1, a2: in bit;
    f_ex2: out bit);
end ex2;

architecture fun_ex2 of ex2 is
    begin 
    f_ex2 <= ((a1 and (not a2)) or ((not a1) and a2)) after 5 ns;
end fun_ex2;

entity lab2var30 is
    port(x1, x2, x3, x4: in bit; y1, y2, y3, y4: out bit);
end lab2var30;
    
architecture func of lab2var30 is 
    component neg
        port (a1: in bit;
            q1: out bit);
    end component;

    component na2
        port (a11, b11: in bit;
        q2: out bit);	
    end component;
        
    component nao3
        port (a19, b19, c19, d19: in bit; q10: out bit);
    end component;
        
    signal g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,g16:bit; 
        begin
        l1: neg port map (x1,g1);
        l2: neg port map (x3,g2);
        l3: na2 port map (x4,g1,g3);
        l4: na3o2 port map (g3,x3,x4,g1,g4); 
        l5: neg port map (g4,g5);
        l6: noa2 port map (x2,g2,x1,g6); 
        l7: nao22 port map (x3,x1,x2,g5,g7);
            y1 <= g7;
        l8: neg port map (g7,g8); 
        l9: neg port map (g8,g9);
        l10: nao2 port map (g9,x3,x2,g10); 
        l11: na3 port map (g10,x4,g1,g11); 
        l12: nao3 port map (g11,g6,x4,g8,g12);
            y2 <= g12;
        l13: neg port map (g12,g13);
        l14: noa22 port map (g1,x2,g9,g13,g14); 
        l15: a3 port map (g13,g1,x2,g15);
            y3 <= g15;
        l16: neg port map (g15,g16);
        l17: nao2 port map (g16,x4,g14,y4);
end func;
    
