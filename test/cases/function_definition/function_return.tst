int retvar(ref n)
  int i = n.layout
  return i
end
-- -- --
s(:expressions,
  s(:function, :int,
    s(:name, :retvar),
    s(:parameters,
      s(:parameter, :ref, :n)),
    s(:expressions,
      s(:field_def, :int, :i,
        s(:field_access,
          s(:receiver,
            s(:name, :n)),
          s(:field,
            s(:name, :layout)))),
      s(:return,
        s(:name, :i)))))
