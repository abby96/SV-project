class parent; //all working 
    bit [4:0] length=5;
    bit [4:0] breath=10;
    bit [31:0] perimeter;
  function por();
    perimeter=2*(length+breath);
    $display("perimeter of rectangle=%d",perimeter);
  endfunction
endclass

class child extends parent;
  bit [31:0] area;
 function aor();
    area=length*breath;
     $display("area of rectangle=%d",area);
   super.por();//calling parent function
  endfunction
 
endclass
  
  module top;
    child c1=new();
      initial begin
        c1.aor();
        //c1.por();//calling aor function    
        //we can call prent functoin from here also like c1.por(); but we have disable super.por();
      
      end
    
  endmodule
