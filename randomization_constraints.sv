
class randomi;
  //properties
  randc bit [3:0] a; 
  rand bit [3:0] b;
 //contraints 
  constraint c1 { !(a inside {3, 7, [8:15]}); //inside is used for include those particular number, can use randc
                 b dist{3:=4, 5:=3};} //dist is used for the increase weightage, cant use randc
           
  
endclass

module top;
  randomi r1=new();//handle
  
  
  initial 
   begin
    repeat(10) 
   
    begin
     
      r1.randomize();
    
      $display(, b=%0d"a=%0d",r1.a, r1.b);
      end
      
    
      
   
   end
endmodule
  
