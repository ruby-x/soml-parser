Object.foo(42)
-- -- --
s(:list,  [s(:call, 
  s(:name,  "foo"), 
  s(:arguments, 
    s(:int,  42)), 
  s(:receiver, 
    s(:module,  "Object")))])
