"""
# Module numerics

Module dedicated to numeric operations and additional unicode charactors for
mathematical operators.

## Exported functions
- ≯
- ≱
- ≮
- ≰
- digits2int
- order
"""
module numerics

export  ≯, ≱, ≮, ≰, digits2int, order

"""≮ = !<"""
≮ = !<

"""≰ = !≤"""
≰ = !≤

"""≯ = !>"""
≯ = !>

"""≱ = !≥"""
≱ = !≥


"""
    digits2int(dig::Vector{<:Int})

Transform an array of integer digits derived from `digits(itg)` back to an integer.
"""
function digits2int(dig::Vector{<:Int}, base::Int64=10)::Int

  # Initialise
  itg = 0
  # Loop over digits (starting with first digit at the end of the array)
  for i = length(dig):-1:1
    # Add digit to overall integer as multiples of 10^(n-1), n = position in integer
    itg += dig[i]*base^(i-1)
  end
  return itg
end #function dig2int


"""
    order(value::Real, base::Int=10)::Int

Return the order of magnitude of `value` as `Int`.
Use optional parameter `base` for non-decimal numbers.
"""
order(value::Real, base::Int=10)::Int = value == 0 ? 0 : floor(log(abs(value))/log(10))

end # module numerics
