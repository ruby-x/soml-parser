if(3 > var)
  Object.initialize(3)
end
-- -- --
s(:list,  [s(:if, 
  s(:condition, 
    s(:operator,  ">", 
      s(:int,  3), 
      s(:name,  "var"))), 
  s(:if_true, 
    s(:call, 
      s(:name,  "initialize"), 
      s(:arguments, 
        s(:int,  3)), 
      s(:receiver, 
        s(:module,  "Object")))), 
  s(:if_false,  nil))])
