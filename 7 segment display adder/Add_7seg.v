module Add_7seg (input [7:0] in_1,in_2, output reg [7:0] out_1_1, out_1_2);
  reg [3:0] a,b,x,y;
  
  always @(*) begin
    case (in_1)
      8'b11111100:a=0; 
      8'b01100000:a=1;
      8'b11011010:a=2;
      8'b11110010:a=3;
      8'b01100110:a=4;
      8'b10110110:a=5;
      8'b10111110:a=6;
      8'b11100000:a=7;
      8'b11111110:a=8;
      8'b11110110:a=9;
    endcase
    
    case (in_2)
      8'b11111100:b=0; 
      8'b01100000:b=1;
      8'b11011010:b=2;
      8'b11110010:b=3;
      8'b01100110:b=4;
      8'b10110110:b=5;
      8'b10111110:b=6;
      8'b11100000:b=7;
      8'b11111110:b=8;
      8'b11110110:b=9;
    endcase
    x=(a+b)/10;
    y=(a+b)%10;
 
    case(x)
    0:out_1_1= 8'b11111100;
    1:out_1_1= 8'b01100000;
    2:out_1_1= 8'b11011010;
    3:out_1_1= 8'b11110010;
    4:out_1_1= 8'b01100110;
    5:out_1_1= 8'b10110110;
    6:out_1_1= 8'b10111110;
    7:out_1_1= 8'b11100000;
    8:out_1_1= 8'b11111110;
    9:out_1_1= 8'b11110110;
  endcase

 case(y)
    0:out_1_2= 8'b11111100;
    1:out_1_2= 8'b01100000;
    2:out_1_2= 8'b11011010;
    3:out_1_2= 8'b11110010;
    4:out_1_2= 8'b01100110;
    5:out_1_2= 8'b10110110;
    6:out_1_2= 8'b10111110;
    7:out_1_2= 8'b11100000;
    8:out_1_2= 8'b11111110;
    9:out_1_2= 8'b11110110;
  endcase
end
endmodule 

 