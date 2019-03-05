@noinline function (y::Core.YAKC{A, R})(args...) where {A,R}
    typeassert(args, A)
    ccall(y.fptr1, Any, (Any, Ptr{Any}, Int), y, Any[args...], length(args))::R
end

# YAKC macro goes here
