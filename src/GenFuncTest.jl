module GenFuncTest

using IRTools
using IRTools: @dynamo, IR

@generated function f(x)
  Core.println(x)
  return x
end

@dynamo function passthrough(a...)
  Core.println(a)
  IR(a...)
end

# Precompile

f(1.0)
passthrough(+, 1, 2)

end
