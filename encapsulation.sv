
// OOPS CONCEPT:-INCAPSULATION
//1//local:: only usi class ka properties use kr sakte hain uske bahar ke class me use nhi kr sakte.
//2//protected :: sirf or sirf class(either parent or child) ke ander uska propeties use kr sakte hain bahar module ke koi functoin perform nhi kr sakte hain


/**class parent; //all working 
  local bit [4:0] length=5; //here we use local so we cant expectg any result because local binds uses of parent proporties to their own;
    local bit [4:0] breath=10;
    local bit [31:0] perimeter;
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

**/class parent; //all working 
  protected bit   [4:0] length=5; //protected means hai ki hmlog sirf calss ke ander jitna properties use kr sakte hain ab jaise module ke ander add kiye hain ye compile fail btayega 
  protected  bit [4:0] breath=10;
  protected   bit [31:0] perimeter;
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
    bit [31:0] add;
    child c1=new();
      initial begin
        c1.aor();
        //we can call parent functoin from here also like c1.por();
        //c1.por();//calling aor function but we have disable super.por();
      add = c1.area+c1.perimeter;
        $display("add=%d",add);
      end
    
  endmodule
    
